
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct cmd_list_element {int dummy; } ;


 int GDB_OSABI_ARM_APCS ;
 int GDB_OSABI_ARM_EABI_V1 ;
 int GDB_OSABI_ARM_EABI_V2 ;
 struct cmd_list_element* add_com (char*,int ,int ,char*) ;
 int add_prefix_cmd (char*,int ,int ,char*,int *,char*,int ,int *) ;
 struct cmd_list_element* add_set_enum_cmd (char*,int ,char const**,char const**,char*,int *) ;
 int add_setshow_boolean_cmd (char*,int ,int *,char*,char*,int *,int *,int *,int *) ;
 int add_setshow_cmd_full (char*,int ,int ,char*,char*,char*,int *,int *,int *,int *,struct cmd_list_element**,struct cmd_list_element**) ;
 struct cmd_list_element* add_show_from_set (struct cmd_list_element*,int *) ;
 int arm_apcs_32 ;
 int arm_debug ;
 int arm_dump_tdep ;
 int arm_elf_osabi_sniffer ;
 int arm_gdbarch_init ;
 int arm_init_abi_apcs ;
 int arm_init_abi_eabi_v1 ;
 int arm_init_abi_eabi_v2 ;
 int arm_othernames ;
 char** arm_register_names ;
 int bfd_arch_arm ;
 int bfd_target_elf_flavour ;
 int class_maintenance ;
 int class_obscure ;
 char const* current_fp_model ;
 int current_option ;
 int deprecate_cmd (struct cmd_list_element*,char*) ;
 char const* disassembly_style ;
 char const** fp_model_strings ;
 int fprintf_unfiltered (struct ui_file*,char*,...) ;
 int gdbarch_register (int ,int ,int ) ;
 int gdbarch_register_osabi (int ,int ,int ,int ) ;
 int gdbarch_register_osabi_sniffer (int ,int ,int ) ;
 int get_arm_regname_num_options () ;
 int get_arm_regnames (int,char const**,char const**,char const***) ;
 struct ui_file* mem_fileopen () ;
 int no_class ;
 int num_disassembly_options ;
 int parse_arm_disassembler_option (char*) ;
 int set_arm_command ;
 int set_arm_regname_option (int) ;
 int set_cmd_sfunc (struct cmd_list_element*,int ) ;
 int set_disassembly_style_sfunc ;
 int set_fp_model_sfunc ;
 int setarmcmdlist ;
 int setdebuglist ;
 int setlist ;
 int show_arm_command ;
 int show_fp_model ;
 int showarmcmdlist ;
 int showdebuglist ;
 int showlist ;
 int strcmp (char const*,char*) ;
 int ui_file_delete (struct ui_file*) ;
 char* ui_file_xstrdup (struct ui_file*,long*) ;
 char const** valid_disassembly_styles ;
 int var_boolean ;
 char** xmalloc (int) ;

void
_initialize_arm_tdep (void)
{
  struct ui_file *stb;
  long length;
  struct cmd_list_element *new_set, *new_show;
  const char *setname;
  const char *setdesc;
  const char **regnames;
  int numregs, i, j;
  static char *helptext;

  gdbarch_register (bfd_arch_arm, arm_gdbarch_init, arm_dump_tdep);


  gdbarch_register_osabi_sniffer (bfd_arch_arm,
      bfd_target_elf_flavour,
      arm_elf_osabi_sniffer);


  gdbarch_register_osabi (bfd_arch_arm, 0, GDB_OSABI_ARM_EABI_V1,
                          arm_init_abi_eabi_v1);
  gdbarch_register_osabi (bfd_arch_arm, 0, GDB_OSABI_ARM_EABI_V2,
                          arm_init_abi_eabi_v2);
  gdbarch_register_osabi (bfd_arch_arm, 0, GDB_OSABI_ARM_APCS,
                          arm_init_abi_apcs);


  num_disassembly_options = get_arm_regname_num_options ();


  add_prefix_cmd ("arm", no_class, set_arm_command,
    "Various ARM-specific commands.",
    &setarmcmdlist, "set arm ", 0, &setlist);

  add_prefix_cmd ("arm", no_class, show_arm_command,
    "Various ARM-specific commands.",
    &showarmcmdlist, "show arm ", 0, &showlist);


  parse_arm_disassembler_option ("reg-names-std");


  stb = mem_fileopen ();
  fprintf_unfiltered (stb, "Set the disassembly style.\n"
        "The valid values are:\n");


  valid_disassembly_styles
    = xmalloc ((num_disassembly_options + 1) * sizeof (char *));
  for (i = 0; i < num_disassembly_options; i++)
    {
      numregs = get_arm_regnames (i, &setname, &setdesc, &regnames);
      valid_disassembly_styles[i] = setname;
      fprintf_unfiltered (stb, "%s - %s\n", setname,
     setdesc);

      if (!strcmp (setname, "std"))
 {
          disassembly_style = setname;
          current_option = i;
   for (j = 0; j < numregs; j++)
            arm_register_names[j] = (char *) regnames[j];
          set_arm_regname_option (i);
 }
    }

  valid_disassembly_styles[num_disassembly_options] = ((void*)0);


  fprintf_unfiltered (stb, "The default is \"std\".");
  helptext = ui_file_xstrdup (stb, &length);
  ui_file_delete (stb);


  new_set = add_set_enum_cmd ("disassembly-flavor", no_class,
         valid_disassembly_styles,
         &disassembly_style,
         helptext,
         &setlist);
  set_cmd_sfunc (new_set, set_disassembly_style_sfunc);
  deprecate_cmd (new_set, "set arm disassembly");
  deprecate_cmd (add_show_from_set (new_set, &showlist),
   "show arm disassembly");


  new_set = add_set_enum_cmd ("disassembler", no_class,
         valid_disassembly_styles, &disassembly_style,
         helptext, &setarmcmdlist);

  set_cmd_sfunc (new_set, set_disassembly_style_sfunc);
  add_show_from_set (new_set, &showarmcmdlist);

  add_setshow_cmd_full ("apcs32", no_class,
   var_boolean, (char *) &arm_apcs_32,
   "Set usage of ARM 32-bit mode.",
   "Show usage of ARM 32-bit mode.",
   ((void*)0), ((void*)0),
   &setlist, &showlist, &new_set, &new_show);
  deprecate_cmd (new_set, "set arm apcs32");
  deprecate_cmd (new_show, "show arm apcs32");

  add_setshow_boolean_cmd ("apcs32", no_class, &arm_apcs_32,
      "Set usage of ARM 32-bit mode.  "
      "When off, a 26-bit PC will be used.",
      "Show usage of ARM 32-bit mode.  "
      "When off, a 26-bit PC will be used.",
      ((void*)0), ((void*)0),
      &setarmcmdlist, &showarmcmdlist);


  new_set = add_set_enum_cmd
    ("fpu", no_class, fp_model_strings, &current_fp_model,
     "Set the floating point type.\n"
     "auto - Determine the FP typefrom the OS-ABI.\n"
     "softfpa - Software FP, mixed-endian doubles on little-endian ARMs.\n"
     "fpa - FPA co-processor (GCC compiled).\n"
     "softvfp - Software FP with pure-endian doubles.\n"
     "vfp - VFP co-processor.",
     &setarmcmdlist);
  set_cmd_sfunc (new_set, set_fp_model_sfunc);
  set_cmd_sfunc (add_show_from_set (new_set, &showarmcmdlist), show_fp_model);


  deprecate_cmd (add_com ("othernames", class_obscure, arm_othernames,
     "Switch to the next set of register names."),
   "set arm disassembly");


  add_setshow_boolean_cmd ("arm", class_maintenance, &arm_debug,
      "Set ARM debugging.  "
      "When on, arm-specific debugging is enabled.",
      "Show ARM debugging.  "
      "When on, arm-specific debugging is enabled.",
      ((void*)0), ((void*)0),
      &setdebuglist, &showdebuglist);
}
