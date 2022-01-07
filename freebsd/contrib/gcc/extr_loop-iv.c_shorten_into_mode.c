
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtx_iv {int mode; int extend; int base; int extend_mode; } ;
struct niter_desc {void* infinite; void* noloop_assumptions; } ;
typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
 int SIGN_EXTEND ;
 int SImode ;
 int ZERO_EXTEND ;
 void* alloc_EXPR_LIST (int ,int ,void*) ;
 int const0_rtx ;
 int gcc_unreachable () ;
 int get_mode_bounds (int,int,int ,int *,int *) ;
 int simplify_gen_relational (int,int ,int ,int ,int ) ;

__attribute__((used)) static void
shorten_into_mode (struct rtx_iv *iv, enum machine_mode mode,
     enum rtx_code cond, bool signed_p, struct niter_desc *desc)
{
  rtx mmin, mmax, cond_over, cond_under;

  get_mode_bounds (mode, signed_p, iv->extend_mode, &mmin, &mmax);
  cond_under = simplify_gen_relational (130, SImode, iv->extend_mode,
     iv->base, mmin);
  cond_over = simplify_gen_relational (134, SImode, iv->extend_mode,
           iv->base, mmax);

  switch (cond)
    {
      case 132:
      case 130:
      case 131:
      case 129:
 if (cond_under != const0_rtx)
   desc->infinite =
    alloc_EXPR_LIST (0, cond_under, desc->infinite);
 if (cond_over != const0_rtx)
   desc->noloop_assumptions =
    alloc_EXPR_LIST (0, cond_over, desc->noloop_assumptions);
 break;

      case 136:
      case 134:
      case 135:
      case 133:
 if (cond_over != const0_rtx)
   desc->infinite =
    alloc_EXPR_LIST (0, cond_over, desc->infinite);
 if (cond_under != const0_rtx)
   desc->noloop_assumptions =
    alloc_EXPR_LIST (0, cond_under, desc->noloop_assumptions);
 break;

      case 128:
 if (cond_over != const0_rtx)
   desc->infinite =
    alloc_EXPR_LIST (0, cond_over, desc->infinite);
 if (cond_under != const0_rtx)
   desc->infinite =
    alloc_EXPR_LIST (0, cond_under, desc->infinite);
 break;

      default:
 gcc_unreachable ();
    }

  iv->mode = mode;
  iv->extend = signed_p ? SIGN_EXTEND : ZERO_EXTEND;
}
