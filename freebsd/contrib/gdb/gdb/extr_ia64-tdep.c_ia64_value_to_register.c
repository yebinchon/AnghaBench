
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct frame_info {int dummy; } ;


 int MAX_REGISTER_SIZE ;
 int builtin_type_ia64_ext ;
 int convert_typed_floating (void const*,struct type*,char*,int ) ;
 int put_frame_register (struct frame_info*,int,char*) ;

__attribute__((used)) static void
ia64_value_to_register (struct frame_info *frame, int regnum,
                         struct type *valtype, const void *in)
{
  char out[MAX_REGISTER_SIZE];
  convert_typed_floating (in, valtype, out, builtin_type_ia64_ext);
  put_frame_register (frame, regnum, out);
}
