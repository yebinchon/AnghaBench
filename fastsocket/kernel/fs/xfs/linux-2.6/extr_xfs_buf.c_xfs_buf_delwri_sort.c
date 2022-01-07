
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_buftarg_t ;
struct list_head {int dummy; } ;


 int list_sort (int *,struct list_head*,int ) ;
 int xfs_buf_cmp ;

void
xfs_buf_delwri_sort(
 xfs_buftarg_t *target,
 struct list_head *list)
{
 list_sort(((void*)0), list, xfs_buf_cmp);
}
