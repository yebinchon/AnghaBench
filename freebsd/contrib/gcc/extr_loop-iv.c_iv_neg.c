
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtx_iv {scalar_t__ extend; int extend_mode; void* mult; void* delta; void* step; void* base; } ;


 int NEG ;
 scalar_t__ UNKNOWN ;
 void* simplify_gen_unary (int ,int ,void*,int ) ;

__attribute__((used)) static bool
iv_neg (struct rtx_iv *iv)
{
  if (iv->extend == UNKNOWN)
    {
      iv->base = simplify_gen_unary (NEG, iv->extend_mode,
         iv->base, iv->extend_mode);
      iv->step = simplify_gen_unary (NEG, iv->extend_mode,
         iv->step, iv->extend_mode);
    }
  else
    {
      iv->delta = simplify_gen_unary (NEG, iv->extend_mode,
          iv->delta, iv->extend_mode);
      iv->mult = simplify_gen_unary (NEG, iv->extend_mode,
         iv->mult, iv->extend_mode);
    }

  return 1;
}
