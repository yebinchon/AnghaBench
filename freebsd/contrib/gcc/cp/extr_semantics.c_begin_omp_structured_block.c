
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int do_pushlevel (int ) ;
 int sk_omp ;

tree
begin_omp_structured_block (void)
{
  return do_pushlevel (sk_omp);
}
