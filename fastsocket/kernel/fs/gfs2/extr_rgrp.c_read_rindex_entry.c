
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gfs2_sbd {int sd_rgrps; scalar_t__ sd_max_rg_data; int sd_rindex_spin; } ;
struct gfs2_rindex {int ri_bitbytes; int ri_data; int ri_data0; int ri_length; int ri_addr; } ;
struct gfs2_rgrpd {scalar_t__ rd_data; int rd_bits; TYPE_1__* rd_gl; int rd_flags; void* rd_addr; int rd_rsspin; void* rd_bitbytes; void* rd_data0; void* rd_length; struct gfs2_sbd* rd_sbd; } ;
struct gfs2_inode {int i_inode; } ;
struct file_ra_state {int dummy; } ;
typedef scalar_t__ loff_t ;
struct TYPE_3__ {struct gfs2_rgrpd* gl_object; } ;


 int CREATE ;
 int ENOMEM ;
 int GFP_NOFS ;
 int GFS2_RDF_UPTODATE ;
 struct gfs2_sbd* GFS2_SB (int *) ;
 void* be32_to_cpu (int ) ;
 void* be64_to_cpu (int ) ;
 int compute_bitstructs (struct gfs2_rgrpd*) ;
 int gfs2_glock_get (struct gfs2_sbd*,void*,int *,int ,TYPE_1__**) ;
 int gfs2_glock_put (TYPE_1__*) ;
 int gfs2_internal_read (struct gfs2_inode*,struct file_ra_state*,char*,scalar_t__*,int) ;
 int gfs2_rgrp_glops ;
 int gfs2_rgrpd_cachep ;
 scalar_t__ i_size_read (int *) ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct gfs2_rgrpd*) ;
 struct gfs2_rgrpd* kmem_cache_zalloc (int ,int ) ;
 int rgd_insert (struct gfs2_rgrpd*) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int read_rindex_entry(struct gfs2_inode *ip,
        struct file_ra_state *ra_state)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 loff_t pos = sdp->sd_rgrps * sizeof(struct gfs2_rindex);
 struct gfs2_rindex buf;
 int error;
 struct gfs2_rgrpd *rgd;

 if (pos >= i_size_read(&ip->i_inode))
  return 1;

 error = gfs2_internal_read(ip, ra_state, (char *)&buf, &pos,
       sizeof(struct gfs2_rindex));

 if (error != sizeof(struct gfs2_rindex))
  return (error == 0) ? 1 : error;

 rgd = kmem_cache_zalloc(gfs2_rgrpd_cachep, GFP_NOFS);
 error = -ENOMEM;
 if (!rgd)
  return error;

 rgd->rd_sbd = sdp;
 rgd->rd_addr = be64_to_cpu(buf.ri_addr);
 rgd->rd_length = be32_to_cpu(buf.ri_length);
 rgd->rd_data0 = be64_to_cpu(buf.ri_data0);
 rgd->rd_data = be32_to_cpu(buf.ri_data);
 rgd->rd_bitbytes = be32_to_cpu(buf.ri_bitbytes);
 spin_lock_init(&rgd->rd_rsspin);

 error = compute_bitstructs(rgd);
 if (error)
  goto fail;

 error = gfs2_glock_get(sdp, rgd->rd_addr,
          &gfs2_rgrp_glops, CREATE, &rgd->rd_gl);
 if (error)
  goto fail;

 rgd->rd_gl->gl_object = rgd;
 rgd->rd_flags &= ~GFS2_RDF_UPTODATE;
 if (rgd->rd_data > sdp->sd_max_rg_data)
  sdp->sd_max_rg_data = rgd->rd_data;
 spin_lock(&sdp->sd_rindex_spin);
 error = rgd_insert(rgd);
 spin_unlock(&sdp->sd_rindex_spin);
 if (!error)
  return 0;

 error = 0;
 gfs2_glock_put(rgd->rd_gl);

fail:
 kfree(rgd->rd_bits);
 kmem_cache_free(gfs2_rgrpd_cachep, rgd);
 return error;
}
