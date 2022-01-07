
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int disassembler_ftype ;


 int build_ARC_extmap (void*) ;
 int decodeInstr ;

disassembler_ftype
arc_get_disassembler (void *ptr)
{
  if (ptr)
    build_ARC_extmap (ptr);
  return decodeInstr;
}
