
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_ail_cursor {struct xfs_ail_cursor* next; int * item; } ;
struct xfs_ail {struct xfs_ail_cursor xa_cursors; } ;


 int ASSERT (struct xfs_ail_cursor*) ;

void
xfs_trans_ail_cursor_done(
 struct xfs_ail *ailp,
 struct xfs_ail_cursor *done)
{
 struct xfs_ail_cursor *prev = ((void*)0);
 struct xfs_ail_cursor *cur;

 done->item = ((void*)0);
 if (done == &ailp->xa_cursors)
  return;
 prev = &ailp->xa_cursors;
 for (cur = prev->next; cur; prev = cur, cur = prev->next) {
  if (cur == done) {
   prev->next = cur->next;
   break;
  }
 }
 ASSERT(cur);
}
