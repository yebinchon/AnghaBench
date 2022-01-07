
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int* ada_type_name (struct type*) ;
 int strlen (int*) ;

int
ada_vax_float_type_suffix (struct type *type)
{
  return ada_type_name (type)[strlen (ada_type_name (type)) - 1];
}
