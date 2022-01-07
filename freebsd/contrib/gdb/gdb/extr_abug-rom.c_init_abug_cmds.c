
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {char* cmd; char* resp_delim; char* term; char* term_cmd; } ;
struct TYPE_8__ {char* cmd; char* resp_delim; char* term; char* term_cmd; } ;
struct TYPE_7__ {char* cmdb; char* cmdw; char* cmdl; char* resp_delim; int * term_cmd; int * term; int * cmdll; } ;
struct TYPE_6__ {char* cmdb; char* cmdw; char* cmdl; int * term_cmd; int * term; int * resp_delim; int * cmdll; } ;
struct TYPE_10__ {char* cont; char* step; char* set_break; char* clr_break; char* clr_all_break; char* fill; char* dump_registers; char* register_pattern; char* load; char* loadresp; char* prompt; char* line_term; int magic; int regname; int * regnames; int stopbits; int * target; int * cmd_end; int * load_routine; int supply_register; TYPE_4__ getreg; TYPE_3__ setreg; TYPE_2__ getmem; TYPE_1__ setmem; int * stop; int init; int flags; } ;


 int MONITOR_OPS_MAGIC ;
 int MO_CLR_BREAK_USES_ADDR ;
 int SERIAL_1_STOPBITS ;
 TYPE_5__ abug_cmds ;
 int abug_inits ;
 int abug_ops ;
 int abug_regname ;
 int abug_supply_register ;

__attribute__((used)) static void
init_abug_cmds (void)
{
  abug_cmds.flags = MO_CLR_BREAK_USES_ADDR;
  abug_cmds.init = abug_inits;
  abug_cmds.cont = "g\r";
  abug_cmds.step = "t\r";
  abug_cmds.stop = ((void*)0);
  abug_cmds.set_break = "br %x\r";
  abug_cmds.clr_break = "nobr %x\r";
  abug_cmds.clr_all_break = "nobr\r";
  abug_cmds.fill = "bf %x:%x %x;b\r";
  abug_cmds.setmem.cmdb = "ms %x %02x\r";
  abug_cmds.setmem.cmdw = "ms %x %04x\r";
  abug_cmds.setmem.cmdl = "ms %x %08x\r";
  abug_cmds.setmem.cmdll = ((void*)0);
  abug_cmds.setmem.resp_delim = ((void*)0);
  abug_cmds.setmem.term = ((void*)0);
  abug_cmds.setmem.term_cmd = ((void*)0);
  abug_cmds.getmem.cmdb = "md %x:%x;b\r";
  abug_cmds.getmem.cmdw = "md %x:%x;b\r";
  abug_cmds.getmem.cmdl = "md %x:%x;b\r";
  abug_cmds.getmem.cmdll = ((void*)0);
  abug_cmds.getmem.resp_delim = " ";
  abug_cmds.getmem.term = ((void*)0);
  abug_cmds.getmem.term_cmd = ((void*)0);
  abug_cmds.setreg.cmd = "rm %s %x\r";
  abug_cmds.setreg.resp_delim = "=";
  abug_cmds.setreg.term = "? ";
  abug_cmds.setreg.term_cmd = ".\r";
  abug_cmds.getreg.cmd = "rm %s\r";
  abug_cmds.getreg.resp_delim = "=";
  abug_cmds.getreg.term = "? ";
  abug_cmds.getreg.term_cmd = ".\r";
  abug_cmds.dump_registers = "rd\r";
  abug_cmds.register_pattern = "\\(\\w+\\) +=\\([0-9a-fA-F]+\\b\\)";
  abug_cmds.supply_register = abug_supply_register;
  abug_cmds.load_routine = ((void*)0);
  abug_cmds.load = "lo 0\r";
  abug_cmds.loadresp = "\n";
  abug_cmds.prompt = "135Bug>";
  abug_cmds.line_term = "\r";
  abug_cmds.cmd_end = ((void*)0);
  abug_cmds.target = &abug_ops;
  abug_cmds.stopbits = SERIAL_1_STOPBITS;
  abug_cmds.regnames = ((void*)0);
  abug_cmds.regname = abug_regname;
  abug_cmds.magic = MONITOR_OPS_MAGIC;
}
