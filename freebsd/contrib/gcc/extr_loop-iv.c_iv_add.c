
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtx_iv {scalar_t__ extend; scalar_t__ mode; scalar_t__ extend_mode; void* delta; void* base; void* step; } ;
typedef void* rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ GET_MODE_SIZE (scalar_t__) ;
 int MINUS ;
 int PLUS ;
 scalar_t__ UNKNOWN ;
 int ZERO_EXTEND ;
 void* const0_rtx ;
 int iv_neg (struct rtx_iv*) ;
 void* simplify_gen_binary (int,int,void*,void*) ;
 void* simplify_gen_unary (int ,scalar_t__,void*,scalar_t__) ;

__attribute__((used)) static bool
iv_add (struct rtx_iv *iv0, struct rtx_iv *iv1, enum rtx_code op)
{
  enum machine_mode mode;
  rtx arg;


  if (iv0->extend == UNKNOWN
      && iv0->mode == iv0->extend_mode
      && iv0->step == const0_rtx
      && GET_MODE_SIZE (iv0->extend_mode) < GET_MODE_SIZE (iv1->extend_mode))
    {
      iv0->extend_mode = iv1->extend_mode;
      iv0->base = simplify_gen_unary (ZERO_EXTEND, iv0->extend_mode,
          iv0->base, iv0->mode);
    }
  if (iv1->extend == UNKNOWN
      && iv1->mode == iv1->extend_mode
      && iv1->step == const0_rtx
      && GET_MODE_SIZE (iv1->extend_mode) < GET_MODE_SIZE (iv0->extend_mode))
    {
      iv1->extend_mode = iv0->extend_mode;
      iv1->base = simplify_gen_unary (ZERO_EXTEND, iv1->extend_mode,
          iv1->base, iv1->mode);
    }

  mode = iv0->extend_mode;
  if (mode != iv1->extend_mode)
    return 0;

  if (iv0->extend == UNKNOWN && iv1->extend == UNKNOWN)
    {
      if (iv0->mode != iv1->mode)
 return 0;

      iv0->base = simplify_gen_binary (op, mode, iv0->base, iv1->base);
      iv0->step = simplify_gen_binary (op, mode, iv0->step, iv1->step);

      return 1;
    }


  if (iv1->extend == UNKNOWN
      && iv1->mode == mode
      && iv1->step == const0_rtx)
    {
      iv0->delta = simplify_gen_binary (op, mode, iv0->delta, iv1->base);
      return 1;
    }

  if (iv0->extend == UNKNOWN
      && iv0->mode == mode
      && iv0->step == const0_rtx)
    {
      arg = iv0->base;
      *iv0 = *iv1;
      if (op == MINUS
   && !iv_neg (iv0))
 return 0;

      iv0->delta = simplify_gen_binary (PLUS, mode, iv0->delta, arg);
      return 1;
    }

  return 0;
}
