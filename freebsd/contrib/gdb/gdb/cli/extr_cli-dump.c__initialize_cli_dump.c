
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int completer; } ;


 int add_cmd (char*,int ,int ,char*,int *) ;
 struct cmd_list_element* add_com (char*,int ,int ,char*) ;
 int add_dump_command (char*,int ,char*) ;
 int add_prefix_cmd (char*,int ,int ,char*,int *,char*,int ,int *) ;
 int all_commands ;
 int append_binary_memory ;
 int append_binary_value ;
 int append_cmdlist ;
 int append_command ;
 int binary_append_cmdlist ;
 int binary_append_command ;
 int binary_dump_cmdlist ;
 int binary_dump_command ;
 int class_vars ;
 int cmdlist ;
 int dump_binary_memory ;
 int dump_binary_value ;
 int dump_cmdlist ;
 int dump_command ;
 int dump_ihex_memory ;
 int dump_ihex_value ;
 int dump_memory_command ;
 int dump_srec_memory ;
 int dump_srec_value ;
 int dump_tekhex_memory ;
 int dump_tekhex_value ;
 int dump_value_command ;
 int filename_completer ;
 int ihex_cmdlist ;
 int ihex_dump_command ;
 int restore_command ;
 int srec_cmdlist ;
 int srec_dump_command ;
 int tekhex_cmdlist ;
 int tekhex_dump_command ;

void
_initialize_cli_dump (void)
{
  struct cmd_list_element *c;
  add_prefix_cmd ("dump", class_vars, dump_command, "Dump target code/data to a local file.",

    &dump_cmdlist, "dump ",
    0 ,
    &cmdlist);
  add_prefix_cmd ("append", class_vars, append_command, "Append target code/data to a local file.",

    &append_cmdlist, "append ",
    0 ,
    &cmdlist);

  add_dump_command ("memory", dump_memory_command, "Write contents of memory to a raw binary file.\nArguments are FILE START STOP.  Writes the contents of memory within the\nrange [START .. STOP) to the specifed FILE in raw target ordered bytes.");




  add_dump_command ("value", dump_value_command, "Write the value of an expression to a raw binary file.\nArguments are FILE EXPRESSION.  Writes the value of EXPRESSION to\nthe specified FILE in raw target ordered bytes.");




  add_prefix_cmd ("srec", all_commands, srec_dump_command, "Write target code/data to an srec file.",

    &srec_cmdlist, "dump srec ",
    0 ,
    &dump_cmdlist);

  add_prefix_cmd ("ihex", all_commands, ihex_dump_command, "Write target code/data to an intel hex file.",

    &ihex_cmdlist, "dump ihex ",
    0 ,
    &dump_cmdlist);

  add_prefix_cmd ("tekhex", all_commands, tekhex_dump_command, "Write target code/data to a tekhex file.",

    &tekhex_cmdlist, "dump tekhex ",
    0 ,
    &dump_cmdlist);

  add_prefix_cmd ("binary", all_commands, binary_dump_command, "Write target code/data to a raw binary file.",

    &binary_dump_cmdlist, "dump binary ",
    0 ,
    &dump_cmdlist);

  add_prefix_cmd ("binary", all_commands, binary_append_command, "Append target code/data to a raw binary file.",

    &binary_append_cmdlist, "append binary ",
    0 ,
    &append_cmdlist);

  add_cmd ("memory", all_commands, dump_srec_memory, "Write contents of memory to an srec file.\nArguments are FILE START STOP.  Writes the contents of memory\nwithin the range [START .. STOP) to the specifed FILE in srec format.",



    &srec_cmdlist);

  add_cmd ("value", all_commands, dump_srec_value, "Write the value of an expression to an srec file.\nArguments are FILE EXPRESSION.  Writes the value of EXPRESSION\nto the specified FILE in srec format.",



    &srec_cmdlist);

  add_cmd ("memory", all_commands, dump_ihex_memory, "Write contents of memory to an ihex file.\nArguments are FILE START STOP.  Writes the contents of memory within\nthe range [START .. STOP) to the specifed FILE in intel hex format.",



    &ihex_cmdlist);

  add_cmd ("value", all_commands, dump_ihex_value, "Write the value of an expression to an ihex file.\nArguments are FILE EXPRESSION.  Writes the value of EXPRESSION\nto the specified FILE in intel hex format.",



    &ihex_cmdlist);

  add_cmd ("memory", all_commands, dump_tekhex_memory, "Write contents of memory to a tekhex file.\nArguments are FILE START STOP.  Writes the contents of memory\nwithin the range [START .. STOP) to the specifed FILE in tekhex format.",



    &tekhex_cmdlist);

  add_cmd ("value", all_commands, dump_tekhex_value, "Write the value of an expression to a tekhex file.\nArguments are FILE EXPRESSION.  Writes the value of EXPRESSION\nto the specified FILE in tekhex format.",



    &tekhex_cmdlist);

  add_cmd ("memory", all_commands, dump_binary_memory, "Write contents of memory to a raw binary file.\nArguments are FILE START STOP.  Writes the contents of memory\nwithin the range [START .. STOP) to the specifed FILE in binary format.",



    &binary_dump_cmdlist);

  add_cmd ("value", all_commands, dump_binary_value, "Write the value of an expression to a raw binary file.\nArguments are FILE EXPRESSION.  Writes the value of EXPRESSION\nto the specified FILE in raw target ordered bytes.",



    &binary_dump_cmdlist);

  add_cmd ("memory", all_commands, append_binary_memory, "Append contents of memory to a raw binary file.\nArguments are FILE START STOP.  Writes the contents of memory within the\nrange [START .. STOP) to the specifed FILE in raw target ordered bytes.",



    &binary_append_cmdlist);

  add_cmd ("value", all_commands, append_binary_value, "Append the value of an expression to a raw binary file.\nArguments are FILE EXPRESSION.  Writes the value of EXPRESSION\nto the specified FILE in raw target ordered bytes.",



    &binary_append_cmdlist);

  c = add_com ("restore", class_vars, restore_command,
        "Restore the contents of FILE to target memory.\nArguments are FILE OFFSET START END where all except FILE are optional.\nOFFSET will be added to the base address of the file (default zero).\nIf START and END are given, only the file contents within that range\n(file relative) will be restored to target memory.");




  c->completer = filename_completer;

}
