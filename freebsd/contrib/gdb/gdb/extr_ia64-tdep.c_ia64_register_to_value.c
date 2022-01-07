
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct frame_info {int dummy; } ;


 int MAX_REGISTER_SIZE ;
 int builtin_type_ia64_ext ;
 int convert_typed_floating (char*,int ,void*,struct type*) ;
 int frame_register_read (struct frame_info*,int,char*) ;

__attribute__((used)) static void
ia64_register_to_value (struct frame_info *frame, int regnum,
                         struct type *valtype, void *out)
{
  char in[MAX_REGISTER_SIZE];
  frame_register_read (frame, regnum, in);
  convert_typed_floating (in, builtin_type_ia64_ext, out, valtype);
}
