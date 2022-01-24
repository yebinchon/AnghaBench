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
struct cmd_list_element {int /*<<< orphan*/  completer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 struct cmd_list_element* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  all_commands ; 
 int /*<<< orphan*/  append_binary_memory ; 
 int /*<<< orphan*/  append_binary_value ; 
 int /*<<< orphan*/  append_cmdlist ; 
 int /*<<< orphan*/  append_command ; 
 int /*<<< orphan*/  binary_append_cmdlist ; 
 int /*<<< orphan*/  binary_append_command ; 
 int /*<<< orphan*/  binary_dump_cmdlist ; 
 int /*<<< orphan*/  binary_dump_command ; 
 int /*<<< orphan*/  class_vars ; 
 int /*<<< orphan*/  cmdlist ; 
 int /*<<< orphan*/  dump_binary_memory ; 
 int /*<<< orphan*/  dump_binary_value ; 
 int /*<<< orphan*/  dump_cmdlist ; 
 int /*<<< orphan*/  dump_command ; 
 int /*<<< orphan*/  dump_ihex_memory ; 
 int /*<<< orphan*/  dump_ihex_value ; 
 int /*<<< orphan*/  dump_memory_command ; 
 int /*<<< orphan*/  dump_srec_memory ; 
 int /*<<< orphan*/  dump_srec_value ; 
 int /*<<< orphan*/  dump_tekhex_memory ; 
 int /*<<< orphan*/  dump_tekhex_value ; 
 int /*<<< orphan*/  dump_value_command ; 
 int /*<<< orphan*/  filename_completer ; 
 int /*<<< orphan*/  ihex_cmdlist ; 
 int /*<<< orphan*/  ihex_dump_command ; 
 int /*<<< orphan*/  restore_command ; 
 int /*<<< orphan*/  srec_cmdlist ; 
 int /*<<< orphan*/  srec_dump_command ; 
 int /*<<< orphan*/  tekhex_cmdlist ; 
 int /*<<< orphan*/  tekhex_dump_command ; 

void
FUNC4 (void)
{
  struct cmd_list_element *c;
  FUNC3 ("dump", class_vars, dump_command, "\
Dump target code/data to a local file.",
		  &dump_cmdlist, "dump ",
		  0/*allow-unknown*/,
		  &cmdlist);
  FUNC3 ("append", class_vars, append_command, "\
Append target code/data to a local file.",
		  &append_cmdlist, "append ",
		  0/*allow-unknown*/,
		  &cmdlist);

  FUNC2 ("memory", dump_memory_command, "\
Write contents of memory to a raw binary file.\n\
Arguments are FILE START STOP.  Writes the contents of memory within the\n\
range [START .. STOP) to the specifed FILE in raw target ordered bytes.");

  FUNC2 ("value", dump_value_command, "\
Write the value of an expression to a raw binary file.\n\
Arguments are FILE EXPRESSION.  Writes the value of EXPRESSION to\n\
the specified FILE in raw target ordered bytes.");

  FUNC3 ("srec", all_commands, srec_dump_command, "\
Write target code/data to an srec file.",
		  &srec_cmdlist, "dump srec ", 
		  0 /*allow-unknown*/, 
		  &dump_cmdlist);

  FUNC3 ("ihex", all_commands, ihex_dump_command, "\
Write target code/data to an intel hex file.",
		  &ihex_cmdlist, "dump ihex ", 
		  0 /*allow-unknown*/, 
		  &dump_cmdlist);

  FUNC3 ("tekhex", all_commands, tekhex_dump_command, "\
Write target code/data to a tekhex file.",
		  &tekhex_cmdlist, "dump tekhex ", 
		  0 /*allow-unknown*/, 
		  &dump_cmdlist);

  FUNC3 ("binary", all_commands, binary_dump_command, "\
Write target code/data to a raw binary file.",
		  &binary_dump_cmdlist, "dump binary ", 
		  0 /*allow-unknown*/, 
		  &dump_cmdlist);

  FUNC3 ("binary", all_commands, binary_append_command, "\
Append target code/data to a raw binary file.",
		  &binary_append_cmdlist, "append binary ", 
		  0 /*allow-unknown*/, 
		  &append_cmdlist);

  FUNC0 ("memory", all_commands, dump_srec_memory, "\
Write contents of memory to an srec file.\n\
Arguments are FILE START STOP.  Writes the contents of memory\n\
within the range [START .. STOP) to the specifed FILE in srec format.",
	   &srec_cmdlist);

  FUNC0 ("value", all_commands, dump_srec_value, "\
Write the value of an expression to an srec file.\n\
Arguments are FILE EXPRESSION.  Writes the value of EXPRESSION\n\
to the specified FILE in srec format.",
	   &srec_cmdlist);

  FUNC0 ("memory", all_commands, dump_ihex_memory, "\
Write contents of memory to an ihex file.\n\
Arguments are FILE START STOP.  Writes the contents of memory within\n\
the range [START .. STOP) to the specifed FILE in intel hex format.",
	   &ihex_cmdlist);

  FUNC0 ("value", all_commands, dump_ihex_value, "\
Write the value of an expression to an ihex file.\n\
Arguments are FILE EXPRESSION.  Writes the value of EXPRESSION\n\
to the specified FILE in intel hex format.",
	   &ihex_cmdlist);

  FUNC0 ("memory", all_commands, dump_tekhex_memory, "\
Write contents of memory to a tekhex file.\n\
Arguments are FILE START STOP.  Writes the contents of memory\n\
within the range [START .. STOP) to the specifed FILE in tekhex format.",
	   &tekhex_cmdlist);

  FUNC0 ("value", all_commands, dump_tekhex_value, "\
Write the value of an expression to a tekhex file.\n\
Arguments are FILE EXPRESSION.  Writes the value of EXPRESSION\n\
to the specified FILE in tekhex format.",
	   &tekhex_cmdlist);

  FUNC0 ("memory", all_commands, dump_binary_memory, "\
Write contents of memory to a raw binary file.\n\
Arguments are FILE START STOP.  Writes the contents of memory\n\
within the range [START .. STOP) to the specifed FILE in binary format.",
	   &binary_dump_cmdlist);

  FUNC0 ("value", all_commands, dump_binary_value, "\
Write the value of an expression to a raw binary file.\n\
Arguments are FILE EXPRESSION.  Writes the value of EXPRESSION\n\
to the specified FILE in raw target ordered bytes.",
	   &binary_dump_cmdlist);

  FUNC0 ("memory", all_commands, append_binary_memory, "\
Append contents of memory to a raw binary file.\n\
Arguments are FILE START STOP.  Writes the contents of memory within the\n\
range [START .. STOP) to the specifed FILE in raw target ordered bytes.",
	   &binary_append_cmdlist);

  FUNC0 ("value", all_commands, append_binary_value, "\
Append the value of an expression to a raw binary file.\n\
Arguments are FILE EXPRESSION.  Writes the value of EXPRESSION\n\
to the specified FILE in raw target ordered bytes.",
	   &binary_append_cmdlist);

  c = FUNC1 ("restore", class_vars, restore_command, 
	       "Restore the contents of FILE to target memory.\n\
Arguments are FILE OFFSET START END where all except FILE are optional.\n\
OFFSET will be added to the base address of the file (default zero).\n\
If START and END are given, only the file contents within that range\n\
(file relative) will be restored to target memory.");
  c->completer = filename_completer;
  /* FIXME: completers for other commands. */
}