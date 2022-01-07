
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * static_chain_decl; } ;
typedef int FILE ;





 int ASM_GENERATE_INTERNAL_LABEL (char*,char*,int) ;
 int DEFAULT_ABI ;
 int NO_PROFILE_COUNTERS ;
 char* RS6000_MCOUNT ;
 size_t STATIC_CHAIN_REGNUM ;
 int TARGET_32BIT ;
 int TARGET_PROFILE_KERNEL ;
 int TARGET_SECURE_PLT ;
 int asm_fprintf (int *,char*,char*,...) ;
 int assemble_name (int *,char*) ;
 TYPE_1__* cfun ;
 int flag_pic ;
 int fprintf (int *,char*,char*,...) ;
 int fputs (char*,int *) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 char** reg_names ;
 int warning (int ,char*) ;

void
output_function_profiler (FILE *file, int labelno)
{
  char buf[100];

  switch (DEFAULT_ABI)
    {
    default:
      gcc_unreachable ();

    case 128:
      if (!TARGET_32BIT)
 {
   warning (0, "no profiling of 64-bit code for this ABI");
   return;
 }
      ASM_GENERATE_INTERNAL_LABEL (buf, "LP", labelno);
      fprintf (file, "\tmflr %s\n", reg_names[0]);
      if (NO_PROFILE_COUNTERS)
 {
   asm_fprintf (file, "\t{st|stw} %s,4(%s)\n",
         reg_names[0], reg_names[1]);
 }
      else if (TARGET_SECURE_PLT && flag_pic)
 {
   asm_fprintf (file, "\tbcl 20,31,1f\n1:\n\t{st|stw} %s,4(%s)\n",
         reg_names[0], reg_names[1]);
   asm_fprintf (file, "\tmflr %s\n", reg_names[12]);
   asm_fprintf (file, "\t{cau|addis} %s,%s,",
         reg_names[12], reg_names[12]);
   assemble_name (file, buf);
   asm_fprintf (file, "-1b@ha\n\t{cal|la} %s,", reg_names[0]);
   assemble_name (file, buf);
   asm_fprintf (file, "-1b@l(%s)\n", reg_names[12]);
 }
      else if (flag_pic == 1)
 {
   fputs ("\tbl _GLOBAL_OFFSET_TABLE_@local-4\n", file);
   asm_fprintf (file, "\t{st|stw} %s,4(%s)\n",
         reg_names[0], reg_names[1]);
   asm_fprintf (file, "\tmflr %s\n", reg_names[12]);
   asm_fprintf (file, "\t{l|lwz} %s,", reg_names[0]);
   assemble_name (file, buf);
   asm_fprintf (file, "@got(%s)\n", reg_names[12]);
 }
      else if (flag_pic > 1)
 {
   asm_fprintf (file, "\t{st|stw} %s,4(%s)\n",
         reg_names[0], reg_names[1]);

   fputs ("\tbcl 20,31,1f\n\t.long ", file);
   assemble_name (file, buf);
   fputs ("-.\n1:", file);
   asm_fprintf (file, "\tmflr %s\n", reg_names[11]);
   asm_fprintf (file, "\t{l|lwz} %s,0(%s)\n",
         reg_names[0], reg_names[11]);
   asm_fprintf (file, "\t{cax|add} %s,%s,%s\n",
         reg_names[0], reg_names[0], reg_names[11]);
 }
      else
 {
   asm_fprintf (file, "\t{liu|lis} %s,", reg_names[12]);
   assemble_name (file, buf);
   fputs ("@ha\n", file);
   asm_fprintf (file, "\t{st|stw} %s,4(%s)\n",
         reg_names[0], reg_names[1]);
   asm_fprintf (file, "\t{cal|la} %s,", reg_names[0]);
   assemble_name (file, buf);
   asm_fprintf (file, "@l(%s)\n", reg_names[12]);
 }


      fprintf (file, "\tbl %s%s\n",
        RS6000_MCOUNT, flag_pic ? "@plt" : "");
      break;

    case 130:
    case 129:
      if (!TARGET_PROFILE_KERNEL)
 {

 }
      else
 {
   gcc_assert (!TARGET_32BIT);

   asm_fprintf (file, "\tmflr %s\n", reg_names[0]);
   asm_fprintf (file, "\tstd %s,16(%s)\n", reg_names[0], reg_names[1]);

   if (cfun->static_chain_decl != ((void*)0))
     {
       asm_fprintf (file, "\tstd %s,24(%s)\n",
      reg_names[STATIC_CHAIN_REGNUM], reg_names[1]);
       fprintf (file, "\tbl %s\n", RS6000_MCOUNT);
       asm_fprintf (file, "\tld %s,24(%s)\n",
      reg_names[STATIC_CHAIN_REGNUM], reg_names[1]);
     }
   else
     fprintf (file, "\tbl %s\n", RS6000_MCOUNT);
 }
      break;
    }
}
