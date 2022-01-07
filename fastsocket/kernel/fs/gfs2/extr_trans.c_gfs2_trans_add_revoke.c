
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_trans {int tr_touched; int tr_num_revoke; } ;
struct gfs2_sbd {int sd_log_le_revoke; int sd_log_num_revoke; } ;
struct gfs2_glock {int gl_flags; int gl_revokes; } ;
struct gfs2_bufdata {int bd_list; int * bd_ops; int bd_ail_gl_list; int bd_ail_st_list; struct gfs2_glock* bd_gl; } ;
struct TYPE_2__ {struct gfs2_trans* journal_info; } ;


 int BUG_ON (int) ;
 int GLF_LFLUSH ;
 int atomic_inc (int *) ;
 TYPE_1__* current ;
 int gfs2_revoke_lops ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;
 int set_bit (int ,int *) ;

void gfs2_trans_add_revoke(struct gfs2_sbd *sdp, struct gfs2_bufdata *bd)
{
 struct gfs2_glock *gl = bd->bd_gl;
 struct gfs2_trans *tr = current->journal_info;

 BUG_ON(!list_empty(&bd->bd_list));
 BUG_ON(!list_empty(&bd->bd_ail_st_list));
 BUG_ON(!list_empty(&bd->bd_ail_gl_list));
 bd->bd_ops = &gfs2_revoke_lops;
 tr->tr_touched = 1;
 tr->tr_num_revoke++;
 sdp->sd_log_num_revoke++;
 atomic_inc(&gl->gl_revokes);
 set_bit(GLF_LFLUSH, &gl->gl_flags);
 list_add(&bd->bd_list, &sdp->sd_log_le_revoke);
}
