
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_ENUM ;
 scalar_t__ TYPE_CODE_RANGE ;
 scalar_t__ TYPE_UNSIGNED (struct type*) ;

int
ada_is_modular_type (struct type *type)
{


  struct type *subranged_type;

  return (subranged_type != ((void*)0) && TYPE_CODE (type) == TYPE_CODE_RANGE
   && TYPE_CODE (subranged_type) != TYPE_CODE_ENUM
   && TYPE_UNSIGNED (subranged_type));
}
