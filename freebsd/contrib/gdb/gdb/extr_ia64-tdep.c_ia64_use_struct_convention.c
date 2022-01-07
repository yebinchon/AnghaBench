
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TYPE_LENGTH (struct type*) ;
 struct type* is_float_or_hfa_type (struct type*) ;

int
ia64_use_struct_convention (int gcc_p, struct type *type)
{
  struct type *float_elt_type;





  float_elt_type = is_float_or_hfa_type (type);
  if (float_elt_type != ((void*)0)
      && TYPE_LENGTH (type) / TYPE_LENGTH (float_elt_type) <= 8)
    return 0;



  return TYPE_LENGTH (type) > 32;
}
