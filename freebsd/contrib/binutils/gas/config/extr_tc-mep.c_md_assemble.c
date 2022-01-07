
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* buffer; int fields; void* insn; } ;
typedef TYPE_1__ mep_insn ;
struct TYPE_8__ {int * isas; } ;
typedef int CGEN_BITSET ;


 int CGEN_FIELDS_BITSIZE (int *) ;
 int CGEN_INT_INSN_P ;
 int CGEN_MAX_INSN_SIZE ;
 int MEP_COP_ISA ;
 int MEP_CORE_ISA ;
 int MEP_INSN_COP_P (void*) ;
 scalar_t__ VLIW ;
 int _ (char*) ;
 int as_bad (char*,...) ;
 int as_fatal (char*) ;
 int cgen_bitset_clear (int *) ;
 int * cgen_bitset_copy (int *) ;
 int cgen_bitset_union (int *,int *,int *) ;
 TYPE_4__* gas_cgen_cpu_desc ;
 int gas_cgen_finish_insn (void*,char*,int ,int,int *) ;
 int gas_cgen_init_parse () ;
 void* mep_cgen_assemble_cop_insn (TYPE_4__*,char*,int *,char*,void*) ;
 void* mep_cgen_assemble_insn (TYPE_4__*,char*,int *,char*,char**) ;
 int mep_check_for_disabled_registers (TYPE_1__*) ;
 int mep_process_saved_insns () ;
 int mep_save_insn (TYPE_1__) ;
 scalar_t__ mode ;
 scalar_t__ num_insns_saved ;
 scalar_t__ pluspresent ;

void
md_assemble (char * str)
{
  static CGEN_BITSET* isas = ((void*)0);
  char * errmsg;


  gas_cgen_init_parse ();
  if (isas == ((void*)0))
    isas = cgen_bitset_copy (& MEP_CORE_ISA);
  else
    {
      cgen_bitset_clear (isas);
      cgen_bitset_union (isas, & MEP_CORE_ISA, isas);
    }
  gas_cgen_cpu_desc->isas = isas;

  if (mode == VLIW)
    {


      int thisInsnIsCopro = 0;
      mep_insn insn;
      int i;



      if (! CGEN_INT_INSN_P)
         for (i=0; i < CGEN_MAX_INSN_SIZE; i++)
            insn.buffer[i]='\0';


      cgen_bitset_union (isas, & MEP_COP_ISA, isas);


      insn.insn = mep_cgen_assemble_insn (gas_cgen_cpu_desc, str,
       &insn.fields, insn.buffer,
       &errmsg);
      if (!insn.insn)
 {
   as_bad ("%s", errmsg);
   return;
 }
      mep_check_for_disabled_registers (&insn);


      thisInsnIsCopro = MEP_INSN_COP_P (insn.insn);

      if (!thisInsnIsCopro)
 {
   insn.insn = mep_cgen_assemble_cop_insn (gas_cgen_cpu_desc, str,
        &insn.fields, insn.buffer,
        insn.insn);
   thisInsnIsCopro = MEP_INSN_COP_P (insn.insn);
   mep_check_for_disabled_registers (&insn);
 }

      if (pluspresent)
 {


   if (!thisInsnIsCopro)
     {
       as_fatal("A core insn cannot be preceeded by a +.\n");
       return;
     }

   if (num_insns_saved > 0)
     {

       mep_save_insn (insn);
     }
   else
     {



       as_bad (_("Invalid use of parallelization operator."));
       return;
     }
 }
      else
 {

   if (num_insns_saved > 0)
     {




       mep_process_saved_insns ();
       num_insns_saved = 0;

     }
   mep_save_insn (insn);
 }

      pluspresent = 0;
    }
  else
    {



      mep_insn insn;



      if (pluspresent)
 {
   as_bad (_("Leading plus sign not allowed in core mode"));
   return;
 }

      insn.insn = mep_cgen_assemble_insn
 (gas_cgen_cpu_desc, str, & insn.fields, insn.buffer, & errmsg);

      if (!insn.insn)
 {
   as_bad ("%s", errmsg);
   return;
 }
      gas_cgen_finish_insn (insn.insn, insn.buffer,
       CGEN_FIELDS_BITSIZE (& insn.fields), 1, ((void*)0));
      mep_check_for_disabled_registers (&insn);
    }
}
