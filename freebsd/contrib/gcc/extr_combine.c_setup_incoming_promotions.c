
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_6__ {int decl; } ;
struct TYPE_4__ {scalar_t__ (* promote_function_args ) (int ) ;} ;
struct TYPE_5__ {TYPE_1__ calls; } ;


 unsigned int FIRST_PSEUDO_REGISTER ;
 scalar_t__ FUNCTION_ARG_REGNO_P (int ) ;
 int GET_MODE (int ) ;
 int OUTGOING_REGNO (unsigned int) ;
 int SIGN_EXTEND ;
 int TREE_TYPE (int ) ;
 int ZERO_EXTEND ;
 TYPE_3__* cfun ;
 int const0_rtx ;
 int gen_rtx_CLOBBER (int,int ) ;
 int gen_rtx_fmt_e (int ,int ,int ) ;
 int get_insns () ;
 int promoted_input_arg (unsigned int,int*,int*) ;
 int record_value_for_reg (int ,int ,int ) ;
 scalar_t__ stub1 (int ) ;
 TYPE_2__ targetm ;

__attribute__((used)) static void
setup_incoming_promotions (void)
{
  unsigned int regno;
  rtx reg;
  enum machine_mode mode;
  int unsignedp;
  rtx first = get_insns ();

  if (targetm.calls.promote_function_args (TREE_TYPE (cfun->decl)))
    {
      for (regno = 0; regno < FIRST_PSEUDO_REGISTER; regno++)



 if (FUNCTION_ARG_REGNO_P (OUTGOING_REGNO (regno))
     && (reg = promoted_input_arg (regno, &mode, &unsignedp)) != 0)
   {
     record_value_for_reg
       (reg, first, gen_rtx_fmt_e ((unsignedp ? ZERO_EXTEND
        : SIGN_EXTEND),
       GET_MODE (reg),
       gen_rtx_CLOBBER (mode, const0_rtx)));
   }
    }
}
