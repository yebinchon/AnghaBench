
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;


 int VALUE_TYPE (struct value*) ;
 struct value* coerce_unspec_val_to_type (struct value*,int ,struct type*) ;
 struct type* decode_packed_array_type (int ) ;
 int error (char*) ;

__attribute__((used)) static struct value *
decode_packed_array (struct value *arr)
{
  struct type *type = decode_packed_array_type (VALUE_TYPE (arr));

  if (type == ((void*)0))
    {
      error ("can't unpack array");
      return ((void*)0);
    }
  else
    return coerce_unspec_val_to_type (arr, 0, type);
}
