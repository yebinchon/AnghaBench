#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ui_file {int dummy; } ;
struct cmd_list_element {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GDB_OSABI_ARM_APCS ; 
 int /*<<< orphan*/  GDB_OSABI_ARM_EABI_V1 ; 
 int /*<<< orphan*/  GDB_OSABI_ARM_EABI_V2 ; 
 struct cmd_list_element* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cmd_list_element* FUNC2 (char*,int /*<<< orphan*/ ,char const**,char const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cmd_list_element**,struct cmd_list_element**) ; 
 struct cmd_list_element* FUNC5 (struct cmd_list_element*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  arm_apcs_32 ; 
 int /*<<< orphan*/  arm_debug ; 
 int /*<<< orphan*/  arm_dump_tdep ; 
 int /*<<< orphan*/  arm_elf_osabi_sniffer ; 
 int /*<<< orphan*/  arm_gdbarch_init ; 
 int /*<<< orphan*/  arm_init_abi_apcs ; 
 int /*<<< orphan*/  arm_init_abi_eabi_v1 ; 
 int /*<<< orphan*/  arm_init_abi_eabi_v2 ; 
 int /*<<< orphan*/  arm_othernames ; 
 char** arm_register_names ; 
 int /*<<< orphan*/  bfd_arch_arm ; 
 int /*<<< orphan*/  bfd_target_elf_flavour ; 
 int /*<<< orphan*/  class_maintenance ; 
 int /*<<< orphan*/  class_obscure ; 
 char const* current_fp_model ; 
 int current_option ; 
 int /*<<< orphan*/  FUNC6 (struct cmd_list_element*,char*) ; 
 char const* disassembly_style ; 
 char const** fp_model_strings ; 
 int /*<<< orphan*/  FUNC7 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 () ; 
 int FUNC12 (int,char const**,char const**,char const***) ; 
 struct ui_file* FUNC13 () ; 
 int /*<<< orphan*/  no_class ; 
 int num_disassembly_options ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  set_arm_command ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_disassembly_style_sfunc ; 
 int /*<<< orphan*/  set_fp_model_sfunc ; 
 int /*<<< orphan*/  setarmcmdlist ; 
 int /*<<< orphan*/  setdebuglist ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  show_arm_command ; 
 int /*<<< orphan*/  show_fp_model ; 
 int /*<<< orphan*/  showarmcmdlist ; 
 int /*<<< orphan*/  showdebuglist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  FUNC17 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct ui_file*) ; 
 char* FUNC19 (struct ui_file*,long*) ; 
 char const** valid_disassembly_styles ; 
 int /*<<< orphan*/  var_boolean ; 
 char** FUNC20 (int) ; 

void
FUNC21 (void)
{
  struct ui_file *stb;
  long length;
  struct cmd_list_element *new_set, *new_show;
  const char *setname;
  const char *setdesc;
  const char **regnames;
  int numregs, i, j;
  static char *helptext;

  FUNC8 (bfd_arch_arm, arm_gdbarch_init, arm_dump_tdep);

  /* Register an ELF OS ABI sniffer for ARM binaries.  */
  FUNC10 (bfd_arch_arm,
				  bfd_target_elf_flavour,
				  arm_elf_osabi_sniffer);

  /* Register some ABI variants for embedded systems.  */
  FUNC9 (bfd_arch_arm, 0, GDB_OSABI_ARM_EABI_V1,
                          arm_init_abi_eabi_v1);
  FUNC9 (bfd_arch_arm, 0, GDB_OSABI_ARM_EABI_V2,
                          arm_init_abi_eabi_v2);
  FUNC9 (bfd_arch_arm, 0, GDB_OSABI_ARM_APCS,
                          arm_init_abi_apcs);

  /* Get the number of possible sets of register names defined in opcodes.  */
  num_disassembly_options = FUNC11 ();

  /* Add root prefix command for all "set arm"/"show arm" commands.  */
  FUNC1 ("arm", no_class, set_arm_command,
		  "Various ARM-specific commands.",
		  &setarmcmdlist, "set arm ", 0, &setlist);

  FUNC1 ("arm", no_class, show_arm_command,
		  "Various ARM-specific commands.",
		  &showarmcmdlist, "show arm ", 0, &showlist);

  /* Sync the opcode insn printer with our register viewer.  */
  FUNC14 ("reg-names-std");

  /* Begin creating the help text.  */
  stb = FUNC13 ();
  FUNC7 (stb, "Set the disassembly style.\n"
		      "The valid values are:\n");

  /* Initialize the array that will be passed to add_set_enum_cmd().  */
  valid_disassembly_styles
    = FUNC20 ((num_disassembly_options + 1) * sizeof (char *));
  for (i = 0; i < num_disassembly_options; i++)
    {
      numregs = FUNC12 (i, &setname, &setdesc, &regnames);
      valid_disassembly_styles[i] = setname;
      FUNC7 (stb, "%s - %s\n", setname,
			  setdesc);
      /* Copy the default names (if found) and synchronize disassembler.  */
      if (!FUNC17 (setname, "std"))
	{
          disassembly_style = setname;
          current_option = i;
	  for (j = 0; j < numregs; j++)
            arm_register_names[j] = (char *) regnames[j];
          FUNC15 (i);
	}
    }
  /* Mark the end of valid options.  */
  valid_disassembly_styles[num_disassembly_options] = NULL;

  /* Finish the creation of the help text.  */
  FUNC7 (stb, "The default is \"std\".");
  helptext = FUNC19 (stb, &length);
  FUNC18 (stb);

  /* Add the deprecated disassembly-flavor command.  */
  new_set = FUNC2 ("disassembly-flavor", no_class,
			      valid_disassembly_styles,
			      &disassembly_style,
			      helptext,
			      &setlist);
  FUNC16 (new_set, set_disassembly_style_sfunc);
  FUNC6 (new_set, "set arm disassembly");
  FUNC6 (FUNC5 (new_set, &showlist),
		 "show arm disassembly");

  /* And now add the new interface.  */
  new_set = FUNC2 ("disassembler", no_class,
			      valid_disassembly_styles, &disassembly_style,
			      helptext, &setarmcmdlist);

  FUNC16 (new_set, set_disassembly_style_sfunc);
  FUNC5 (new_set, &showarmcmdlist);

  FUNC4 ("apcs32", no_class,
			var_boolean, (char *) &arm_apcs_32,
			"Set usage of ARM 32-bit mode.",
			"Show usage of ARM 32-bit mode.",
			NULL, NULL,
			&setlist, &showlist, &new_set, &new_show);
  FUNC6 (new_set, "set arm apcs32");
  FUNC6 (new_show, "show arm apcs32");

  FUNC3 ("apcs32", no_class, &arm_apcs_32,
			   "Set usage of ARM 32-bit mode.  "
			   "When off, a 26-bit PC will be used.",
			   "Show usage of ARM 32-bit mode.  "
			   "When off, a 26-bit PC will be used.",
			   NULL, NULL,
			   &setarmcmdlist, &showarmcmdlist);

  /* Add a command to allow the user to force the FPU model.  */
  new_set = FUNC2
    ("fpu", no_class, fp_model_strings, &current_fp_model,
     "Set the floating point type.\n"
     "auto - Determine the FP typefrom the OS-ABI.\n"
     "softfpa - Software FP, mixed-endian doubles on little-endian ARMs.\n"
     "fpa - FPA co-processor (GCC compiled).\n"
     "softvfp - Software FP with pure-endian doubles.\n"
     "vfp - VFP co-processor.",
     &setarmcmdlist);
  FUNC16 (new_set, set_fp_model_sfunc);
  FUNC16 (FUNC5 (new_set, &showarmcmdlist), show_fp_model);

  /* Add the deprecated "othernames" command.  */
  FUNC6 (FUNC0 ("othernames", class_obscure, arm_othernames,
			  "Switch to the next set of register names."),
		 "set arm disassembly");

  /* Debugging flag.  */
  FUNC3 ("arm", class_maintenance, &arm_debug,
			   "Set ARM debugging.  "
			   "When on, arm-specific debugging is enabled.",
			   "Show ARM debugging.  "
			   "When on, arm-specific debugging is enabled.",
			   NULL, NULL,
			   &setdebuglist, &showdebuglist);
}