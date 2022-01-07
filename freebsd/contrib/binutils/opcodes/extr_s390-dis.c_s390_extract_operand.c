
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_operand {int shift; int bits; int flags; } ;


 int S390_OPERAND_LENGTH ;
 int S390_OPERAND_PCREL ;
 int S390_OPERAND_SIGNED ;

__attribute__((used)) static inline unsigned int
s390_extract_operand (unsigned char *insn, const struct s390_operand *operand)
{
  unsigned int val;
  int bits;


  insn += operand->shift / 8;
  bits = (operand->shift & 7) + operand->bits;
  val = 0;
  do
    {
      val <<= 8;
      val |= (unsigned int) *insn++;
      bits -= 8;
    }
  while (bits > 0);
  val >>= -bits;
  val &= ((1U << (operand->bits - 1)) << 1) - 1;


  if (operand->bits == 20 && operand->shift == 20)
    val = (val & 0xff) << 12 | (val & 0xfff00) >> 8;


  if ((operand->flags & (S390_OPERAND_SIGNED | S390_OPERAND_PCREL))
      && (val & (1U << (operand->bits - 1))))
    val |= (-1U << (operand->bits - 1)) << 1;


  if (operand->flags & S390_OPERAND_PCREL)
    val <<= 1;


  if (operand->flags & S390_OPERAND_LENGTH)
    val++;
  return val;
}
