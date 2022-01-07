
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct frame_info {int dummy; } ;


 int I386_MAX_REGISTER_SIZE ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_FLT ;
 int builtin_type_i387_ext ;
 int convert_typed_floating (char*,int ,void*,struct type*) ;
 int gdb_assert (int ) ;
 int get_frame_register (struct frame_info*,int,char*) ;
 int i386_fp_regnum_p (int) ;
 int warning (char*) ;

void
i387_register_to_value (struct frame_info *frame, int regnum,
   struct type *type, void *to)
{
  char from[I386_MAX_REGISTER_SIZE];

  gdb_assert (i386_fp_regnum_p (regnum));


  if (TYPE_CODE (type) != TYPE_CODE_FLT)
    {
      warning ("Cannot convert floating-point register value "
        "to non-floating-point type.");
      return;
    }



  get_frame_register (frame, regnum, from);
  convert_typed_floating (from, builtin_type_i387_ext, to, type);
}
