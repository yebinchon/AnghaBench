
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct constant_descriptor_rtx {scalar_t__ mode; int constant; } ;


 int rtx_equal_p (int ,int ) ;

__attribute__((used)) static int
const_desc_rtx_eq (const void *a, const void *b)
{
  const struct constant_descriptor_rtx *x = a;
  const struct constant_descriptor_rtx *y = b;

  if (x->mode != y->mode)
    return 0;
  return rtx_equal_p (x->constant, y->constant);
}
