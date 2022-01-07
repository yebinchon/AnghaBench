
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_5__* insn; int buffer; int fields; } ;
typedef TYPE_2__ mep_insn ;
struct TYPE_9__ {TYPE_1__* base; } ;
struct TYPE_7__ {int num; } ;


 int CGEN_FIELDS_BITSIZE (int *) ;
 scalar_t__ CGEN_INSN_ATTR_VALUE (TYPE_5__*,int ) ;
 int CGEN_INSN_VLIW32_NO_MATCHING_NOP ;
 int MEP_INSN_BEQZ ;
 int MEP_INSN_BNEZ ;
 int MEP_INSN_BSR12 ;
 int MEP_INSN_COP_P (TYPE_5__*) ;
 int as_bad (char*,...) ;
 int as_fatal (char*) ;
 int gas_cgen_cpu_desc ;
 int gas_cgen_save_fixups (int) ;
 int gas_cgen_swap_fixups (int ) ;
 void* mep_cgen_assemble_insn (int ,char*,int *,int ,char**) ;
 int mep_save_insn (TYPE_2__) ;
 int num_insns_saved ;
 TYPE_2__* saved_insns ;

__attribute__((used)) static void
mep_check_parallel32_scheduling (void)
{
  int insn0iscopro, insn1iscopro, insn0length, insn1length;




  if ( num_insns_saved > 2 )
    as_fatal("Internally paralled cores and coprocessors not supported.");




  if (num_insns_saved == 0)
    return;


  insn0iscopro = MEP_INSN_COP_P (saved_insns[0].insn);
  insn0length = CGEN_FIELDS_BITSIZE (& saved_insns[0].fields);

  if (num_insns_saved == 2)
    {

      insn1iscopro = MEP_INSN_COP_P (saved_insns[1].insn);
      insn1length = CGEN_FIELDS_BITSIZE (& saved_insns[1].fields);

      if ((insn0iscopro && !insn1iscopro)
          || (insn1iscopro && !insn0iscopro))
 {


   if (insn0length + insn1length == 32)
     return;
          else
     as_bad ("core and copro insn lengths must total 32 bits.");
 }
      else
        as_bad ("vliw group must consist of 1 core and 1 copro insn.");
    }
  else
    {
      if (insn0length > 32)
 as_fatal ("Cannot use 48- or 64-bit insns with a 32 bit datapath.");

      if (insn0length == 32)
 return;



      if (CGEN_INSN_ATTR_VALUE (saved_insns[0].insn,
                                CGEN_INSN_VLIW32_NO_MATCHING_NOP))
 as_fatal ("No valid nop.");





      if (insn0iscopro)
 {
          char *errmsg;
          mep_insn insn;




             insn.insn = mep_cgen_assemble_insn (gas_cgen_cpu_desc, "nop",
                                                 &insn.fields, insn.buffer,
                                                 &errmsg);
             if (!insn.insn)
               {
                 as_bad ("%s", errmsg);
                 return;
               }
              saved_insns[1] = saved_insns[0];
              saved_insns[0] = insn;
              num_insns_saved++;
              gas_cgen_swap_fixups (0);
              gas_cgen_save_fixups (1);
 }
      else
 {
          char * errmsg;
          mep_insn insn;
   int insn_num = saved_insns[0].insn->base->num;


   if (insn_num == MEP_INSN_BSR12
       || insn_num == MEP_INSN_BEQZ
       || insn_num == MEP_INSN_BNEZ)
     return;



   insn.insn = mep_cgen_assemble_insn (gas_cgen_cpu_desc, "cpnop16",
           &insn.fields, insn.buffer,
           &errmsg);
          if (!insn.insn)
            {
              as_bad ("%s", errmsg);
              return;
            }


          mep_save_insn (insn);
 }
    }
}
