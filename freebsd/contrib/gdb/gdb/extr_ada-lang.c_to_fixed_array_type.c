
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;


 int TYPE_FIELD_NAME (struct type*,int) ;
 struct type* TYPE_INDEX_TYPE (struct type*) ;
 scalar_t__ TYPE_LENGTH (struct type*) ;
 int TYPE_NFIELDS (struct type*) ;
 int TYPE_OBJFILE (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 struct type* ada_find_parallel_type (struct type*,char*) ;
 struct type* ada_to_fixed_type (struct type*,int ,int ,struct value*) ;
 int alloc_type (int ) ;
 struct type* check_typedef (struct type*) ;
 struct type* create_array_type (int ,struct type*,struct type*) ;
 int error (char*) ;
 struct type* to_fixed_range_type (int ,struct value*,int ) ;
 scalar_t__ varsize_limit ;

__attribute__((used)) static struct type *
to_fixed_array_type (struct type *type0, struct value *dval,
       int ignore_too_big)
{
  struct type *index_type_desc;
  struct type *result;






  index_type_desc = ada_find_parallel_type (type0, "___XA");
  if (index_type_desc == ((void*)0))
    {
      struct type *elt_type0 = check_typedef (TYPE_TARGET_TYPE (type0));



      struct type *elt_type = ada_to_fixed_type (elt_type0, 0, 0, dval);

      if (elt_type0 == elt_type)
 result = type0;
      else
 result = create_array_type (alloc_type (TYPE_OBJFILE (type0)),
        elt_type, TYPE_INDEX_TYPE (type0));
    }
  else
    {
      int i;
      struct type *elt_type0;

      elt_type0 = type0;
      for (i = TYPE_NFIELDS (index_type_desc); i > 0; i -= 1)
 elt_type0 = TYPE_TARGET_TYPE (elt_type0);




      result = ada_to_fixed_type (check_typedef (elt_type0), 0, 0, dval);
      for (i = TYPE_NFIELDS (index_type_desc) - 1; i >= 0; i -= 1)
 {
   struct type *range_type =
     to_fixed_range_type (TYPE_FIELD_NAME (index_type_desc, i),
     dval, TYPE_OBJFILE (type0));
   result = create_array_type (alloc_type (TYPE_OBJFILE (type0)),
          result, range_type);
 }
      if (!ignore_too_big && TYPE_LENGTH (result) > varsize_limit)
 error ("array type with dynamic size is larger than varsize-limit");
    }



  return result;
}
