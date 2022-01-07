
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int cfun ;
 int lookup_stmt_eh_region_fn (int ,int ) ;

int
lookup_stmt_eh_region (tree t)
{


  if (!cfun)
    return -1;
  return lookup_stmt_eh_region_fn (cfun, t);
}
