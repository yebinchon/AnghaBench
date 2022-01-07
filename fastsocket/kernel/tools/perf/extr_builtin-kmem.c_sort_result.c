
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sort_result (int *,int *,int *) ;
 int alloc_sort ;
 int caller_sort ;
 int root_alloc_sorted ;
 int root_alloc_stat ;
 int root_caller_sorted ;
 int root_caller_stat ;

__attribute__((used)) static void sort_result(void)
{
 __sort_result(&root_alloc_stat, &root_alloc_sorted, &alloc_sort);
 __sort_result(&root_caller_stat, &root_caller_sorted, &caller_sort);
}
