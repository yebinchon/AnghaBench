
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;


 int CHECK_TYPEDEF (struct type*) ;
 int TYPE_FIELD_BITPOS (struct type*,int) ;
 int TYPE_FIELD_BITSIZE (struct type*,int) ;
 struct type* TYPE_FIELD_TYPE (struct type*,int) ;
 int VALUE_CONTENTS (struct value*) ;
 struct value* ada_value_primitive_packed_val (struct value*,int ,int,int,int,struct type*) ;
 struct value* value_primitive_field (struct value*,int,int,struct type*) ;

struct value *
ada_value_primitive_field (struct value *arg1, int offset, int fieldno,
      struct type *arg_type)
{
  struct value *v;
  struct type *type;

  CHECK_TYPEDEF (arg_type);
  type = TYPE_FIELD_TYPE (arg_type, fieldno);



  if (TYPE_FIELD_BITSIZE (arg_type, fieldno) != 0)
    {
      int bit_pos = TYPE_FIELD_BITPOS (arg_type, fieldno);
      int bit_size = TYPE_FIELD_BITSIZE (arg_type, fieldno);

      return ada_value_primitive_packed_val (arg1, VALUE_CONTENTS (arg1),
          offset + bit_pos / 8,
          bit_pos % 8, bit_size, type);
    }
  else
    return value_primitive_field (arg1, offset, fieldno, arg_type);
}
