
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_UNION ;
 struct type* TYPE_FIELD_TYPE (struct type*,int) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 scalar_t__ is_dynamic_field (struct type*,int) ;

int
ada_is_variant_part (struct type *type, int field_num)
{
  struct type *field_type = TYPE_FIELD_TYPE (type, field_num);
  return (TYPE_CODE (field_type) == TYPE_CODE_UNION
   || (is_dynamic_field (type, field_num)
       && TYPE_CODE (TYPE_TARGET_TYPE (field_type)) ==
       TYPE_CODE_UNION));
}
