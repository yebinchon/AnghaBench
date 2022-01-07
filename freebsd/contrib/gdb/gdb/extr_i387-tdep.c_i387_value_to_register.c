
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
 int convert_typed_floating (void const*,struct type*,char*,int ) ;
 int gdb_assert (int ) ;
 int i386_fp_regnum_p (int) ;
 int put_frame_register (struct frame_info*,int,char*) ;
 int warning (char*) ;

void
i387_value_to_register (struct frame_info *frame, int regnum,
   struct type *type, const void *from)
{
  char to[I386_MAX_REGISTER_SIZE];

  gdb_assert (i386_fp_regnum_p (regnum));


  if (TYPE_CODE (type) != TYPE_CODE_FLT)
    {
      warning ("Cannot convert non-floating-point type "
        "to floating-point register value.");
      return;
    }



  convert_typed_floating (from, type, to, builtin_type_i387_ext);
  put_frame_register (frame, regnum, to);
}
