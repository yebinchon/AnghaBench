
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int begin_omp_structured_block () ;
 int keep_next_level (int) ;

tree
begin_omp_parallel (void)
{
  keep_next_level (1);
  return begin_omp_structured_block ();
}
