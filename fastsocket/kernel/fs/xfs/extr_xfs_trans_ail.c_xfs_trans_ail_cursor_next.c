
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_log_item {int dummy; } ;
struct xfs_ail_cursor {struct xfs_log_item* item; } ;
struct xfs_ail {int dummy; } ;
typedef int __psint_t ;


 struct xfs_log_item* xfs_ail_min (struct xfs_ail*) ;
 int xfs_trans_ail_cursor_set (struct xfs_ail*,struct xfs_ail_cursor*,struct xfs_log_item*) ;

struct xfs_log_item *
xfs_trans_ail_cursor_next(
 struct xfs_ail *ailp,
 struct xfs_ail_cursor *cur)
{
 struct xfs_log_item *lip = cur->item;

 if ((__psint_t)lip & 1)
  lip = xfs_ail_min(ailp);
 xfs_trans_ail_cursor_set(ailp, cur, lip);
 return lip;
}
