
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_lprops {int dummy; } ;



__attribute__((used)) static void swap_dirty_idx(struct ubifs_lprops **a, struct ubifs_lprops **b,
      int size)
{
 struct ubifs_lprops *t = *a;

 *a = *b;
 *b = t;
}
