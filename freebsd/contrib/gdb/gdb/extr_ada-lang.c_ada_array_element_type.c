
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_ARRAY ;
 scalar_t__ TYPE_CODE_STRUCT ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int ada_array_arity (struct type*) ;
 struct type* check_typedef (struct type*) ;
 struct type* desc_base_type (struct type*) ;
 struct type* desc_data_type (struct type*) ;

struct type *
ada_array_element_type (struct type *type, int nindices)
{
  type = desc_base_type (type);

  if (TYPE_CODE (type) == TYPE_CODE_STRUCT)
    {
      int k;
      struct type *p_array_type;

      p_array_type = desc_data_type (type);

      k = ada_array_arity (type);
      if (k == 0)
 return ((void*)0);


      if (nindices >= 0 && k > nindices)
 k = nindices;
      p_array_type = TYPE_TARGET_TYPE (p_array_type);
      while (k > 0 && p_array_type != ((void*)0))
 {
   p_array_type = check_typedef (TYPE_TARGET_TYPE (p_array_type));
   k -= 1;
 }
      return p_array_type;
    }
  else if (TYPE_CODE (type) == TYPE_CODE_ARRAY)
    {
      while (nindices != 0 && TYPE_CODE (type) == TYPE_CODE_ARRAY)
 {
   type = TYPE_TARGET_TYPE (type);
   nindices -= 1;
 }
      return type;
    }

  return ((void*)0);
}
