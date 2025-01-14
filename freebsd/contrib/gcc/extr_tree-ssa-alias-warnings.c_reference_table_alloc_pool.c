
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_map {int dummy; } ;
typedef scalar_t__ alloc_pool ;


 scalar_t__ create_alloc_pool (char*,int,int) ;
 scalar_t__ ref_table_alloc_pool ;

__attribute__((used)) static inline alloc_pool
reference_table_alloc_pool (bool build)
{
  if (ref_table_alloc_pool || !build)
    return ref_table_alloc_pool;

  ref_table_alloc_pool =
    create_alloc_pool ("ref_table_alloc_pool", sizeof (struct tree_map), 20);

  return ref_table_alloc_pool;
}
