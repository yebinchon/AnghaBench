
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arc_opcode {int dummy; } ;


 size_t ARC_HASH_ICODE (unsigned int) ;
 struct arc_opcode const** icode_map ;

const struct arc_opcode *
arc_opcode_lookup_dis (unsigned int insn)
{
  return icode_map[ARC_HASH_ICODE (insn)];
}
