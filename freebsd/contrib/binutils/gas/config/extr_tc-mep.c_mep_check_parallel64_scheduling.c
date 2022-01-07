
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* buffer; void* insn; int fields; } ;
typedef TYPE_1__ mep_insn ;


 int CGEN_FIELDS_BITSIZE (int *) ;
 scalar_t__ CGEN_INSN_ATTR_VALUE (void*,int ) ;
 int CGEN_INSN_VLIW64_NO_MATCHING_NOP ;
 int MEP_INSN_COP_P (void*) ;
 int as_bad (char*,...) ;
 int as_fatal (char*) ;
 int gas_cgen_cpu_desc ;
 int gas_cgen_save_fixups (int) ;
 int gas_cgen_swap_fixups (int ) ;
 void* mep_cgen_assemble_insn (int ,char*,int *,char*,char**) ;
 int mep_save_insn (TYPE_1__) ;
 int num_insns_saved ;
 TYPE_1__* saved_insns ;

__attribute__((used)) static void
mep_check_parallel64_scheduling (void)
{
  int insn0iscopro, insn1iscopro, insn0length, insn1length;




  if (num_insns_saved > 2)
    as_fatal ("Internally parallel cores of coprocessors not supported.");




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


   if (insn0length + insn1length == 64)
            return;
   else
            as_bad ("core and copro insn lengths must total 64 bits.");
 }
      else
        as_bad ("vliw group must consist of 1 core and 1 copro insn.");
    }
  else
    {
      if (insn0length == 64)
        return;



      if (CGEN_INSN_ATTR_VALUE (saved_insns[0].insn,
    CGEN_INSN_VLIW64_NO_MATCHING_NOP))
 as_fatal ("No valid nop.");

      if (insn0iscopro)
 {
   char *errmsg;
   mep_insn insn;
          int i;


          for (i = 0; i < 64; i++)
             insn.buffer[i] = '\0';
   if (insn0length == 48)
     {


       insn.insn = mep_cgen_assemble_insn (gas_cgen_cpu_desc, "nop",
        & insn.fields, insn.buffer,
        & errmsg);
     }
          else
            {
              as_fatal ("Assembler expects a non-existent core nop.");
            }

  if (!insn.insn)
    {
      as_bad ("%s", errmsg);
      return;
    }
         saved_insns[1] = saved_insns[0];
         saved_insns[0] = insn;
         num_insns_saved++;
         gas_cgen_swap_fixups(0);
         gas_cgen_save_fixups(1);

 }
      else
 {
   char * errmsg;
   mep_insn insn;
          int i;


          for (i = 0; i < 64; i++)
             insn.buffer[i] = '\0';
   if (insn0length == 16)
     {


       insn.insn = mep_cgen_assemble_insn (gas_cgen_cpu_desc, "cpnop48",
        &insn.fields, insn.buffer,
        &errmsg);
     }
   else if (insn0length == 32)
     {

       insn.insn = mep_cgen_assemble_insn (gas_cgen_cpu_desc, "cpnop32",
        &insn.fields, insn.buffer,
        &errmsg);
     }
   else if (insn0length == 48)
     {

       insn.insn = mep_cgen_assemble_insn (gas_cgen_cpu_desc, "cpnop16",
        &insn.fields, insn.buffer,
        &errmsg);
     }
   else

     as_fatal ("Core insn has invalid length!  Something is wrong!");

   if (!insn.insn)
     {
       as_bad ("%s", errmsg);
       return;
     }


   mep_save_insn (insn);
 }
    }
}
