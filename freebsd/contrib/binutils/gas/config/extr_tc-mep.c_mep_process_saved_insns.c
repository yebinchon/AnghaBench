
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fields; int buffer; int insn; } ;


 int CGEN_FIELDS_BITSIZE (int *) ;
 int MAX_SAVED_FIXUP_CHAINS ;
 int gas_cgen_finish_insn (int ,int ,int ,int,int *) ;
 int gas_cgen_initialize_saved_fixups_array () ;
 int gas_cgen_restore_fixups (int) ;
 int gas_cgen_save_fixups (int) ;
 int listing_prev_line () ;
 int mep_check_parallel_scheduling () ;
 int num_insns_saved ;
 TYPE_1__* saved_insns ;

__attribute__((used)) static void
mep_process_saved_insns (void)
{
  int i;

  gas_cgen_save_fixups (MAX_SAVED_FIXUP_CHAINS - 1);


  mep_check_parallel_scheduling ();




  for (i = 0;i<num_insns_saved;i++)
    {
      gas_cgen_restore_fixups (i);
      gas_cgen_finish_insn (saved_insns[i].insn, saved_insns[i].buffer,
       CGEN_FIELDS_BITSIZE (& saved_insns[i].fields),
       1, ((void*)0));
    }
  gas_cgen_restore_fixups (MAX_SAVED_FIXUP_CHAINS - 1);


  gas_cgen_initialize_saved_fixups_array ();
  num_insns_saved = 0;
  listing_prev_line ();
}
