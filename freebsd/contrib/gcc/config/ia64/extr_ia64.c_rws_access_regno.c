
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct reg_flags {scalar_t__ is_or; scalar_t__ is_and; scalar_t__ is_branch; scalar_t__ is_write; } ;
struct TYPE_4__ {int write_count; int first_pred; scalar_t__ written_by_or; scalar_t__ written_by_and; int written_by_fp; } ;


 int AR_PFS_REGNUM ;
 scalar_t__ BR_REGS ;
 int NUM_REGS ;
 int PR_REGNO_P (int) ;
 scalar_t__ PR_REGS ;
 scalar_t__ REGNO_REG_CLASS (int) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 TYPE_1__* rws_insn ;
 TYPE_1__* rws_sum ;
 int rws_update (TYPE_1__*,int,struct reg_flags,int) ;

__attribute__((used)) static int
rws_access_regno (int regno, struct reg_flags flags, int pred)
{
  int need_barrier = 0;

  gcc_assert (regno < NUM_REGS);

  if (! PR_REGNO_P (regno))
    flags.is_and = flags.is_or = 0;

  if (flags.is_write)
    {
      int write_count;


      gcc_assert (!rws_insn[regno].write_count);


      rws_update (rws_insn, regno, flags, pred);
      write_count = rws_sum[regno].write_count;

      switch (write_count)
 {
 case 0:

   rws_update (rws_sum, regno, flags, pred);
   break;

 case 1:




   if (flags.is_and && rws_sum[regno].written_by_and)
     ;
   else if (flags.is_or && rws_sum[regno].written_by_or)
     ;
   else if ((rws_sum[regno].first_pred ^ 1) != pred)
     need_barrier = 1;
   rws_update (rws_sum, regno, flags, pred);
   break;

 case 2:


   if (flags.is_and && rws_sum[regno].written_by_and)
     ;
   else if (flags.is_or && rws_sum[regno].written_by_or)
     ;
   else
     need_barrier = 1;
   rws_sum[regno].written_by_and = flags.is_and;
   rws_sum[regno].written_by_or = flags.is_or;
   break;

 default:
   gcc_unreachable ();
 }
    }
  else
    {
      if (flags.is_branch)
 {



   if (REGNO_REG_CLASS (regno) == BR_REGS || regno == AR_PFS_REGNUM)





     return 0;

   if (REGNO_REG_CLASS (regno) == PR_REGS
       && ! rws_sum[regno].written_by_fp)



     return 0;
 }

      if (flags.is_and && rws_sum[regno].written_by_and)
 return 0;
      if (flags.is_or && rws_sum[regno].written_by_or)
 return 0;

      switch (rws_sum[regno].write_count)
 {
 case 0:

   break;

 case 1:




   if ((rws_sum[regno].first_pred ^ 1) != pred)
     need_barrier = 1;
   break;

 case 2:


   need_barrier = 1;
   break;

 default:
   gcc_unreachable ();
 }
    }

  return need_barrier;
}
