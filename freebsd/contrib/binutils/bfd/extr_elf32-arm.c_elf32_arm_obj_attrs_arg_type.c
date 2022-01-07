
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Tag_compatibility ;

__attribute__((used)) static int
elf32_arm_obj_attrs_arg_type (int tag)
{
  if (tag == Tag_compatibility)
    return 3;
  else if (tag == 4 || tag == 5)
    return 2;
  else if (tag < 32)
    return 1;
  else
    return (tag & 1) != 0 ? 2 : 1;
}
