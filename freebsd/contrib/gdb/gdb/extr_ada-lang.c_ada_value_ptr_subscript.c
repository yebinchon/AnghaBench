
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
typedef scalar_t__ LONGEST ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_ARRAY ;
 int TYPE_INDEX_TYPE (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int builtin_type_int ;
 int error (char*,int) ;
 int get_discrete_bounds (int ,scalar_t__*,scalar_t__*) ;
 int lookup_pointer_type (struct type*) ;
 struct value* value_add (struct value*,struct value*) ;
 struct value* value_cast (int ,int ) ;
 int value_copy (struct value*) ;
 int value_from_longest (int ,scalar_t__) ;
 struct value* value_ind (struct value*) ;
 struct value* value_sub (struct value*,int ) ;

struct value *
ada_value_ptr_subscript (struct value *arr, struct type *type, int arity,
    struct value **ind)
{
  int k;

  for (k = 0; k < arity; k += 1)
    {
      LONGEST lwb, upb;
      struct value *idx;

      if (TYPE_CODE (type) != TYPE_CODE_ARRAY)
 error ("too many subscripts (%d expected)", k);
      arr = value_cast (lookup_pointer_type (TYPE_TARGET_TYPE (type)),
   value_copy (arr));
      get_discrete_bounds (TYPE_INDEX_TYPE (type), &lwb, &upb);
      if (lwb == 0)
 idx = ind[k];
      else
 idx = value_sub (ind[k], value_from_longest (builtin_type_int, lwb));
      arr = value_add (arr, idx);
      type = TYPE_TARGET_TYPE (type);
    }

  return value_ind (arr);
}
