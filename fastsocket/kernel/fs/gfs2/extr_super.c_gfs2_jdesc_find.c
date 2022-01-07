
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_jindex_spin; int sd_jindex_list; } ;
struct gfs2_jdesc {int dummy; } ;


 struct gfs2_jdesc* jdesc_find_i (int *,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct gfs2_jdesc *gfs2_jdesc_find(struct gfs2_sbd *sdp, unsigned int jid)
{
 struct gfs2_jdesc *jd;

 spin_lock(&sdp->sd_jindex_spin);
 jd = jdesc_find_i(&sdp->sd_jindex_list, jid);
 spin_unlock(&sdp->sd_jindex_spin);

 return jd;
}
