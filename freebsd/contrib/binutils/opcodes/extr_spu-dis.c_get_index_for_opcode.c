
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_opcode {scalar_t__ insn_type; } ;


 scalar_t__ LBT ;
 scalar_t__ RI10 ;
 scalar_t__ RI16 ;
 scalar_t__ RI18 ;
 scalar_t__ RI8 ;
 scalar_t__ RRR ;
 int init_spu_disassemble () ;
 struct spu_opcode** spu_disassemble_table ;

__attribute__((used)) static const struct spu_opcode *
get_index_for_opcode (unsigned int insn)
{
  const struct spu_opcode *index;
  unsigned int opcode = insn >> (32-11);



  if (spu_disassemble_table[0] == 0)
    init_spu_disassemble ();

  if ((index = spu_disassemble_table[opcode & 0x780]) != 0
      && index->insn_type == RRR)
    return index;

  if ((index = spu_disassemble_table[opcode & 0x7f0]) != 0
      && (index->insn_type == RI18 || index->insn_type == LBT))
    return index;

  if ((index = spu_disassemble_table[opcode & 0x7f8]) != 0
      && index->insn_type == RI10)
    return index;

  if ((index = spu_disassemble_table[opcode & 0x7fc]) != 0
      && (index->insn_type == RI16))
    return index;

  if ((index = spu_disassemble_table[opcode & 0x7fe]) != 0
      && (index->insn_type == RI8))
    return index;

  if ((index = spu_disassemble_table[opcode & 0x7ff]) != 0)
    return index;

  return 0;
}
