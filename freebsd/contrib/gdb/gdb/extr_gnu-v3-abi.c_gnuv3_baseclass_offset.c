
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 int BASETYPE_VIA_VIRTUAL (struct type*,int) ;
 int TYPE_BASECLASS_BITPOS (struct type*,int) ;
 scalar_t__ TYPE_FIELD_BITPOS (struct type*,scalar_t__) ;
 long TYPE_LENGTH (struct type*) ;
 char* TYPE_NAME (struct type*) ;
 struct type* TYPE_VPTR_BASETYPE (struct type*) ;
 scalar_t__ TYPE_VPTR_FIELDNO (struct type*) ;
 int builtin_type_int ;
 struct type* builtin_type_void_data_ptr ;
 int current_gdbarch ;
 int error (char*,...) ;
 int fill_in_vptr_fieldno (struct type*) ;
 struct type* gdbarch_data (int ,int ) ;
 scalar_t__ value_as_address (struct value*) ;
 long value_as_long (int ) ;
 struct value* value_at_lazy (struct type*,scalar_t__,int *) ;
 struct value* value_field (struct value*,int ) ;
 struct value* value_from_longest (int ,long) ;
 int value_subscript (struct value*,struct value*) ;
 long vtable_address_point_offset () ;
 int vtable_field_vcall_and_vbase_offsets ;
 int vtable_type_gdbarch_data ;

__attribute__((used)) static int
gnuv3_baseclass_offset (struct type *type, int index, char *valaddr,
   CORE_ADDR address)
{
  struct type *vtable_type = gdbarch_data (current_gdbarch,
        vtable_type_gdbarch_data);
  struct value *vtable;
  struct type *vbasetype;
  struct value *offset_val, *vbase_array;
  CORE_ADDR vtable_address;
  long int cur_base_offset, base_offset;



  if (!BASETYPE_VIA_VIRTUAL (type, index))
    return TYPE_BASECLASS_BITPOS (type, index) / 8;






  cur_base_offset = TYPE_BASECLASS_BITPOS (type, index) / 8;
  if (cur_base_offset >= - vtable_address_point_offset ())
    error ("Expected a negative vbase offset (old compiler?)");

  cur_base_offset = cur_base_offset + vtable_address_point_offset ();
  if ((- cur_base_offset) % TYPE_LENGTH (builtin_type_void_data_ptr) != 0)
    error ("Misaligned vbase offset.");
  cur_base_offset = cur_base_offset
    / ((int) TYPE_LENGTH (builtin_type_void_data_ptr));
  vbasetype = TYPE_VPTR_BASETYPE (type);
  if (TYPE_VPTR_FIELDNO (vbasetype) < 0)
    fill_in_vptr_fieldno (vbasetype);

  if (TYPE_VPTR_FIELDNO (vbasetype) >= 0
      && TYPE_FIELD_BITPOS (vbasetype, TYPE_VPTR_FIELDNO (vbasetype)) != 0)
    error ("Illegal vptr offset in class %s",
    TYPE_NAME (vbasetype) ? TYPE_NAME (vbasetype) : "<unknown>");

  vtable_address = value_as_address (value_at_lazy (builtin_type_void_data_ptr,
          address, ((void*)0)));
  vtable = value_at_lazy (vtable_type,
                          vtable_address - vtable_address_point_offset (),
                          ((void*)0));
  offset_val = value_from_longest(builtin_type_int, cur_base_offset);
  vbase_array = value_field (vtable, vtable_field_vcall_and_vbase_offsets);
  base_offset = value_as_long (value_subscript (vbase_array, offset_val));
  return base_offset;
}
