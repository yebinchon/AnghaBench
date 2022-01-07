
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iv_to_split {scalar_t__ insn; } ;



__attribute__((used)) static int
si_info_eq (const void *ivts1, const void *ivts2)
{
  const struct iv_to_split *i1 = ivts1;
  const struct iv_to_split *i2 = ivts2;

  return i1->insn == i2->insn;
}
