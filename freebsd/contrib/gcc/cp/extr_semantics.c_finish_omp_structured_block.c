
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int do_poplevel (int ) ;

tree
finish_omp_structured_block (tree block)
{
  return do_poplevel (block);
}
