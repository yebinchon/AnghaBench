
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_dx_entry {int dummy; } ;


 int BUG_ON (int) ;

__attribute__((used)) static void dx_leaf_sort_swap(void *a, void *b, int size)
{
 struct ocfs2_dx_entry *entry1 = a;
 struct ocfs2_dx_entry *entry2 = b;
 struct ocfs2_dx_entry tmp;

 BUG_ON(size != sizeof(*entry1));

 tmp = *entry1;
 *entry1 = *entry2;
 *entry2 = tmp;
}
