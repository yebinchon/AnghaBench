
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int insn32 ;


 int BFD_ASSERT (int) ;
 unsigned int HI_LOW_ORDER ;
 unsigned int LOW_HI_ORDER ;
 int abort () ;

__attribute__((used)) static insn32
insert_thumb_branch (insn32 br_insn, int rel_off)
{
  unsigned int low_bits;
  unsigned int high_bits;

  BFD_ASSERT ((rel_off & 1) != 1);

  rel_off >>= 1;
  low_bits = rel_off & 0x000007FF;
  high_bits = (rel_off >> 11) & 0x000007FF;

  if ((br_insn & LOW_HI_ORDER) == LOW_HI_ORDER)
    br_insn = LOW_HI_ORDER | (low_bits << 16) | high_bits;
  else if ((br_insn & HI_LOW_ORDER) == HI_LOW_ORDER)
    br_insn = HI_LOW_ORDER | (high_bits << 16) | low_bits;
  else


    abort ();

  return br_insn;
}
