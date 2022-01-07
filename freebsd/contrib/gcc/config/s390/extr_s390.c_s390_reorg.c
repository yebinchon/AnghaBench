
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct constant_pool {int dummy; } ;
typedef scalar_t__ rtx ;
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {int decomposed_literal_pool_addresses_ok_p; int split_branches_pending_p; } ;


 int INSN_ADDRESSES_NEW (scalar_t__,int) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ TARGET_CPU_ZARCH ;
 int XEXP (scalar_t__,int ) ;
 TYPE_2__* cfun ;
 scalar_t__ const0_rtx ;
 scalar_t__ emit_insn (int ) ;
 scalar_t__ emit_label (int ) ;
 int gcc_assert (int) ;
 scalar_t__ get_insns () ;
 int s390_chunkify_cancel (struct constant_pool*) ;
 int s390_chunkify_finish (struct constant_pool*) ;
 struct constant_pool* s390_chunkify_start () ;
 scalar_t__ s390_execute_label (scalar_t__) ;
 int s390_execute_target (scalar_t__) ;
 int s390_mainpool_cancel (struct constant_pool*) ;
 int s390_mainpool_finish (struct constant_pool*) ;
 struct constant_pool* s390_mainpool_start () ;
 int s390_optimize_prologue () ;
 scalar_t__ s390_split_branches () ;
 int split_all_insns_noflow () ;

__attribute__((used)) static void
s390_reorg (void)
{
  bool pool_overflow = 0;



  split_all_insns_noflow ();


  cfun->machine->decomposed_literal_pool_addresses_ok_p = 1;
  for (;;)
    {
      struct constant_pool *pool = ((void*)0);


      if (!pool_overflow)
 {
   pool = s390_mainpool_start ();
   if (!pool)
     pool_overflow = 1;
 }


      if (pool_overflow)
        pool = s390_chunkify_start ();





      if (!TARGET_CPU_ZARCH && s390_split_branches ())
        {
          if (pool_overflow)
            s390_chunkify_cancel (pool);
   else
            s390_mainpool_cancel (pool);

          continue;
        }



      if (pool_overflow)
 s390_chunkify_finish (pool);
      else
 s390_mainpool_finish (pool);


      cfun->machine->split_branches_pending_p = 0;
      break;
    }


  if (TARGET_CPU_ZARCH)
    {
      rtx insn, label, target;

      for (insn = get_insns (); insn; insn = NEXT_INSN (insn))
 {
   label = s390_execute_label (insn);
   if (!label)
     continue;

   gcc_assert (label != const0_rtx);

   target = emit_label (XEXP (label, 0));
   INSN_ADDRESSES_NEW (target, -1);

   target = emit_insn (s390_execute_target (insn));
   INSN_ADDRESSES_NEW (target, -1);
 }
    }


  s390_optimize_prologue ();
}
