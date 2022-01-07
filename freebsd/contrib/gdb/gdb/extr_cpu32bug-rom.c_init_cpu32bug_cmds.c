
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {char* cmd; char* resp_delim; int * term_cmd; int * term; } ;
struct TYPE_8__ {char* cmd; int * term_cmd; int * term; int * resp_delim; } ;
struct TYPE_7__ {char* cmdb; char* cmdw; char* cmdl; char* resp_delim; int * term_cmd; int * term; int * cmdll; } ;
struct TYPE_6__ {char* cmdb; char* cmdw; char* cmdl; int * term_cmd; int * term; int * resp_delim; int * cmdll; } ;
struct TYPE_10__ {char* cont; char* step; char* set_break; char* clr_break; char* clr_all_break; char* fill; char* dump_registers; char* register_pattern; char* load; char* loadresp; char* prompt; char* line_term; int magic; int regname; int * regnames; int stopbits; int * target; int * cmd_end; int * load_routine; int supply_register; TYPE_4__ getreg; TYPE_3__ setreg; TYPE_2__ getmem; TYPE_1__ setmem; int * stop; int init; int flags; } ;


 int MONITOR_OPS_MAGIC ;
 int MO_CLR_BREAK_USES_ADDR ;
 int SERIAL_1_STOPBITS ;
 TYPE_5__ cpu32bug_cmds ;
 int cpu32bug_inits ;
 int cpu32bug_ops ;
 int cpu32bug_regname ;
 int cpu32bug_supply_register ;

__attribute__((used)) static void
init_cpu32bug_cmds (void)
{
  cpu32bug_cmds.flags = MO_CLR_BREAK_USES_ADDR;
  cpu32bug_cmds.init = cpu32bug_inits;
  cpu32bug_cmds.cont = "g\r";
  cpu32bug_cmds.step = "t\r";
  cpu32bug_cmds.stop = ((void*)0);
  cpu32bug_cmds.set_break = "br %x\r";
  cpu32bug_cmds.clr_break = "nobr %x\r";
  cpu32bug_cmds.clr_all_break = "nobr\r";
  cpu32bug_cmds.fill = "bf %x:%x %x;b\r";
  cpu32bug_cmds.setmem.cmdb = "ms %x %02x\r";
  cpu32bug_cmds.setmem.cmdw = "ms %x %04x\r";
  cpu32bug_cmds.setmem.cmdl = "ms %x %08x\r";
  cpu32bug_cmds.setmem.cmdll = ((void*)0);
  cpu32bug_cmds.setmem.resp_delim = ((void*)0);
  cpu32bug_cmds.setmem.term = ((void*)0);
  cpu32bug_cmds.setmem.term_cmd = ((void*)0);
  cpu32bug_cmds.getmem.cmdb = "md %x:%x;b\r";
  cpu32bug_cmds.getmem.cmdw = "md %x:%x;b\r";
  cpu32bug_cmds.getmem.cmdl = "md %x:%x;b\r";
  cpu32bug_cmds.getmem.cmdll = ((void*)0);
  cpu32bug_cmds.getmem.resp_delim = " ";
  cpu32bug_cmds.getmem.term = ((void*)0);
  cpu32bug_cmds.getmem.term_cmd = ((void*)0);
  cpu32bug_cmds.setreg.cmd = "rs %s %x\r";
  cpu32bug_cmds.setreg.resp_delim = ((void*)0);
  cpu32bug_cmds.setreg.term = ((void*)0);
  cpu32bug_cmds.setreg.term_cmd = ((void*)0);
  cpu32bug_cmds.getreg.cmd = "rs %s\r";
  cpu32bug_cmds.getreg.resp_delim = "=";
  cpu32bug_cmds.getreg.term = ((void*)0);
  cpu32bug_cmds.getreg.term_cmd = ((void*)0);
  cpu32bug_cmds.dump_registers = "rd\r";
  cpu32bug_cmds.register_pattern = "\\(\\w+\\) +=\\([0-9a-fA-F]+\\b\\)";
  cpu32bug_cmds.supply_register = cpu32bug_supply_register;
  cpu32bug_cmds.load_routine = ((void*)0);
  cpu32bug_cmds.load = "lo\r";
  cpu32bug_cmds.loadresp = "\n";
  cpu32bug_cmds.prompt = "CPU32Bug>";
  cpu32bug_cmds.line_term = "\r";
  cpu32bug_cmds.cmd_end = ((void*)0);
  cpu32bug_cmds.target = &cpu32bug_ops;
  cpu32bug_cmds.stopbits = SERIAL_1_STOPBITS;
  cpu32bug_cmds.regnames = ((void*)0);
  cpu32bug_cmds.regname = cpu32bug_regname;
  cpu32bug_cmds.magic = MONITOR_OPS_MAGIC;
}
