
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct case_bit_test {scalar_t__ bits; int label; } ;


 int CODE_LABEL_NUMBER (int ) ;

__attribute__((used)) static int
case_bit_test_cmp (const void *p1, const void *p2)
{
  const struct case_bit_test *d1 = p1;
  const struct case_bit_test *d2 = p2;

  if (d2->bits != d1->bits)
    return d2->bits - d1->bits;


  return CODE_LABEL_NUMBER (d2->label) - CODE_LABEL_NUMBER (d1->label);
}
