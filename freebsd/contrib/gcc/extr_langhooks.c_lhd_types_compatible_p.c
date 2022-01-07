
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ TYPE_MAIN_VARIANT (int ) ;

int
lhd_types_compatible_p (tree x, tree y)
{
  return TYPE_MAIN_VARIANT (x) == TYPE_MAIN_VARIANT (y);
}
