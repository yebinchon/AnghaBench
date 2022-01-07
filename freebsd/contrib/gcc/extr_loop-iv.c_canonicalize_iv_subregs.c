
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtx_iv {scalar_t__ mult; scalar_t__ delta; int extend_mode; int mode; scalar_t__ step; void* base; int extend; scalar_t__ first_special; } ;
struct niter_desc {int mode; int signed_p; } ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ GET_MODE_BITSIZE (int) ;





 int SIGN_EXTEND ;
 int UNKNOWN ;
 int ZERO_EXTEND ;
 scalar_t__ const0_rtx ;
 scalar_t__ const1_rtx ;
 int gcc_unreachable () ;
 int shorten_into_mode (struct rtx_iv*,int,int,int,struct niter_desc*) ;
 void* simplify_gen_unary (int ,int,void*,int) ;
 int swap_condition (int) ;

__attribute__((used)) static bool
canonicalize_iv_subregs (struct rtx_iv *iv0, struct rtx_iv *iv1,
    enum rtx_code cond, struct niter_desc *desc)
{
  enum machine_mode comp_mode;
  bool signed_p;



  if (iv0->first_special || iv0->mult != const1_rtx || iv0->delta != const0_rtx)
    return 0;
  if (iv1->first_special || iv1->mult != const1_rtx || iv1->delta != const0_rtx)
    return 0;


  switch (cond)
    {
      case 132:
      case 130:
 if (iv0->extend == ZERO_EXTEND
     || iv1->extend == ZERO_EXTEND)
   return 0;
 signed_p = 1;
 break;

      case 131:
      case 129:
 if (iv0->extend == SIGN_EXTEND
     || iv1->extend == SIGN_EXTEND)
   return 0;
 signed_p = 0;
 break;

      case 128:
 if (iv0->extend != UNKNOWN
     && iv1->extend != UNKNOWN
     && iv0->extend != iv1->extend)
   return 0;

 signed_p = 0;
 if (iv0->extend != UNKNOWN)
   signed_p = iv0->extend == SIGN_EXTEND;
 if (iv1->extend != UNKNOWN)
   signed_p = iv1->extend == SIGN_EXTEND;
 break;

      default:
 gcc_unreachable ();
    }
  comp_mode = iv0->extend_mode;
  if (GET_MODE_BITSIZE (comp_mode) < GET_MODE_BITSIZE (iv1->extend_mode))
    comp_mode = iv1->extend_mode;

  if (iv0->extend_mode != comp_mode)
    {
      if (iv0->mode != iv0->extend_mode
   || iv0->step != const0_rtx)
 return 0;

      iv0->base = simplify_gen_unary (signed_p ? SIGN_EXTEND : ZERO_EXTEND,
          comp_mode, iv0->base, iv0->mode);
      iv0->extend_mode = comp_mode;
    }

  if (iv1->extend_mode != comp_mode)
    {
      if (iv1->mode != iv1->extend_mode
   || iv1->step != const0_rtx)
 return 0;

      iv1->base = simplify_gen_unary (signed_p ? SIGN_EXTEND : ZERO_EXTEND,
          comp_mode, iv1->base, iv1->mode);
      iv1->extend_mode = comp_mode;
    }




  if (iv0->mode == iv0->extend_mode
      && iv0->step == const0_rtx
      && iv0->mode != iv1->mode)
    shorten_into_mode (iv0, iv1->mode, cond, signed_p, desc);

  if (iv1->mode == iv1->extend_mode
      && iv1->step == const0_rtx
      && iv0->mode != iv1->mode)
    shorten_into_mode (iv1, iv0->mode, swap_condition (cond), signed_p, desc);

  if (iv0->mode != iv1->mode)
    return 0;

  desc->mode = iv0->mode;
  desc->signed_p = signed_p;

  return 1;
}
