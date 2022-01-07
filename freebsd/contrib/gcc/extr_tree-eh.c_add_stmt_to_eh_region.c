
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int add_stmt_to_eh_region_fn (int ,int ,int) ;
 int cfun ;

void
add_stmt_to_eh_region (tree t, int num)
{
  add_stmt_to_eh_region_fn (cfun, t, num);
}
