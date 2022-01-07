
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct address_space {int host; } ;
typedef int sector_t ;


 struct gfs2_inode* GFS2_I (int ) ;
 int LM_FLAG_ANY ;
 int LM_ST_SHARED ;
 int generic_block_bmap (struct address_space*,int ,int ) ;
 int gfs2_block_map ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_is_stuffed (struct gfs2_inode*) ;

__attribute__((used)) static sector_t gfs2_bmap(struct address_space *mapping, sector_t lblock)
{
 struct gfs2_inode *ip = GFS2_I(mapping->host);
 struct gfs2_holder i_gh;
 sector_t dblock = 0;
 int error;

 error = gfs2_glock_nq_init(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY, &i_gh);
 if (error)
  return 0;

 if (!gfs2_is_stuffed(ip))
  dblock = generic_block_bmap(mapping, lblock, gfs2_block_map);

 gfs2_glock_dq_uninit(&i_gh);

 return dblock;
}
