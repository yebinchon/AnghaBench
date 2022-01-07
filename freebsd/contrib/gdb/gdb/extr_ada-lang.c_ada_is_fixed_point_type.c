
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int * fixed_type_info (struct type*) ;

int
ada_is_fixed_point_type (struct type *type)
{
  return fixed_type_info (type) != ((void*)0);
}
