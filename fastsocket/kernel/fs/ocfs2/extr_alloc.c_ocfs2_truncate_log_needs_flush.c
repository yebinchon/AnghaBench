
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_truncate_log {int tl_count; int tl_used; } ;
struct ocfs2_super {int slot_num; struct buffer_head* osb_tl_bh; } ;
struct TYPE_2__ {struct ocfs2_truncate_log i_dealloc; } ;
struct ocfs2_dinode {TYPE_1__ id2; } ;
struct buffer_head {scalar_t__ b_data; } ;


 scalar_t__ le16_to_cpu (int ) ;
 int mlog_bug_on_msg (int,char*,int ,scalar_t__,scalar_t__) ;

int ocfs2_truncate_log_needs_flush(struct ocfs2_super *osb)
{
 struct buffer_head *tl_bh = osb->osb_tl_bh;
 struct ocfs2_dinode *di;
 struct ocfs2_truncate_log *tl;

 di = (struct ocfs2_dinode *) tl_bh->b_data;
 tl = &di->id2.i_dealloc;

 mlog_bug_on_msg(le16_to_cpu(tl->tl_used) > le16_to_cpu(tl->tl_count),
   "slot %d, invalid truncate log parameters: used = "
   "%u, count = %u\n", osb->slot_num,
   le16_to_cpu(tl->tl_used), le16_to_cpu(tl->tl_count));
 return le16_to_cpu(tl->tl_used) == le16_to_cpu(tl->tl_count);
}
