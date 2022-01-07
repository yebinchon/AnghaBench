
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int __ocfs2_journal_access (int *,struct ocfs2_caching_info*,struct buffer_head*,int *,int) ;
 int rb_triggers ;

int ocfs2_journal_access_rb(handle_t *handle, struct ocfs2_caching_info *ci,
       struct buffer_head *bh, int type)
{
 return __ocfs2_journal_access(handle, ci, bh, &rb_triggers,
          type);
}
