
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ is_float_or_hfa_type_recurse (struct type*,struct type**) ;

__attribute__((used)) static struct type *
is_float_or_hfa_type (struct type *t)
{
  struct type *et = 0;

  return is_float_or_hfa_type_recurse (t, &et) ? et : 0;
}
