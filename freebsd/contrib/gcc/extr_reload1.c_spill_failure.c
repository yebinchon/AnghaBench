
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum reg_class { ____Placeholder_reg_class } reg_class ;


 int INSN_UID (int ) ;
 int PATTERN (int ) ;
 scalar_t__ asm_noperands (int ) ;
 int debug_reload_to_stream (scalar_t__) ;
 scalar_t__ dump_file ;
 int error (char*,int ) ;
 int error_for_asm (int ,char*,int ) ;
 int fatal_insn (char*,int ) ;
 int fprintf (scalar_t__,char*,int) ;
 int * reg_class_names ;

__attribute__((used)) static void
spill_failure (rtx insn, enum reg_class class)
{
  if (asm_noperands (PATTERN (insn)) >= 0)
    error_for_asm (insn, "can't find a register in class %qs while "
     "reloading %<asm%>",
     reg_class_names[class]);
  else
    {
      error ("unable to find a register to spill in class %qs",
      reg_class_names[class]);

      if (dump_file)
 {
   fprintf (dump_file, "\nReloads for insn # %d\n", INSN_UID (insn));
   debug_reload_to_stream (dump_file);
 }
      fatal_insn ("this is the insn:", insn);
    }
}
