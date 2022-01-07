
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {TYPE_1__* i_res; int i_flags; int i_inode; } ;
struct TYPE_2__ {unsigned int rs_qa_qd_num; int ** rs_qa_qd; } ;


 struct gfs2_sbd* GFS2_SB (int *) ;
 int GIF_QD_LOCKED ;
 int gfs2_assert_warn (struct gfs2_sbd*,int) ;
 int qdsb_put (int *) ;
 int test_bit (int ,int *) ;

void gfs2_quota_unhold(struct gfs2_inode *ip)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 unsigned int x;

 if (ip->i_res == ((void*)0))
  return;
 gfs2_assert_warn(sdp, !test_bit(GIF_QD_LOCKED, &ip->i_flags));

 for (x = 0; x < ip->i_res->rs_qa_qd_num; x++) {
  qdsb_put(ip->i_res->rs_qa_qd[x]);
  ip->i_res->rs_qa_qd[x] = ((void*)0);
 }
 ip->i_res->rs_qa_qd_num = 0;
}
