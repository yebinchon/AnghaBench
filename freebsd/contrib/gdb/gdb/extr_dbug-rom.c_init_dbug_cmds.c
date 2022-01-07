
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
struct TYPE_10__ {int flags; char* cont; char* step; char* set_break; char* clr_break; char* clr_all_break; char* fill; char* dump_registers; char* register_pattern; char* load; char* loadresp; char* prompt; char* line_term; int magic; int regname; int * regnames; int stopbits; int * target; int * cmd_end; int * load_routine; int supply_register; TYPE_4__ getreg; TYPE_3__ setreg; TYPE_2__ getmem; TYPE_1__ setmem; int * stop; int init; } ;


 int MONITOR_OPS_MAGIC ;
 int MO_CLR_BREAK_USES_ADDR ;
 int MO_FILL_USES_ADDR ;
 int MO_GETMEM_NEEDS_RANGE ;
 int SERIAL_1_STOPBITS ;
 TYPE_5__ dbug_cmds ;
 int dbug_inits ;
 int dbug_ops ;
 int dbug_regname ;
 int dbug_supply_register ;

__attribute__((used)) static void
init_dbug_cmds (void)
{
  dbug_cmds.flags = MO_CLR_BREAK_USES_ADDR | MO_GETMEM_NEEDS_RANGE | MO_FILL_USES_ADDR;
  dbug_cmds.init = dbug_inits;
  dbug_cmds.cont = "go\r";
  dbug_cmds.step = "trace\r";
  dbug_cmds.stop = ((void*)0);
  dbug_cmds.set_break = "br %x\r";
  dbug_cmds.clr_break = "br -r %x\r";
  dbug_cmds.clr_all_break = "br -r\r";
  dbug_cmds.fill = "bf.b %x %x %x\r";
  dbug_cmds.setmem.cmdb = "mm.b %x %x\r";
  dbug_cmds.setmem.cmdw = "mm.w %x %x\r";
  dbug_cmds.setmem.cmdl = "mm.l %x %x\r";
  dbug_cmds.setmem.cmdll = ((void*)0);
  dbug_cmds.setmem.resp_delim = ((void*)0);
  dbug_cmds.setmem.term = ((void*)0);
  dbug_cmds.setmem.term_cmd = ((void*)0);
  dbug_cmds.getmem.cmdb = "md.b %x %x\r";
  dbug_cmds.getmem.cmdw = "md.w %x %x\r";
  dbug_cmds.getmem.cmdl = "md.l %x %x\r";
  dbug_cmds.getmem.cmdll = ((void*)0);
  dbug_cmds.getmem.resp_delim = ":";
  dbug_cmds.getmem.term = ((void*)0);
  dbug_cmds.getmem.term_cmd = ((void*)0);
  dbug_cmds.setreg.cmd = "rm %s %x\r";
  dbug_cmds.setreg.resp_delim = ((void*)0);
  dbug_cmds.setreg.term = ((void*)0);
  dbug_cmds.setreg.term_cmd = ((void*)0);
  dbug_cmds.getreg.cmd = "rd %s\r";
  dbug_cmds.getreg.resp_delim = ":";
  dbug_cmds.getreg.term = ((void*)0);
  dbug_cmds.getreg.term_cmd = ((void*)0);
  dbug_cmds.dump_registers = "rd\r";
  dbug_cmds.register_pattern = "\\(\\w+\\) +:\\([0-9a-fA-F]+\\b\\)";
  dbug_cmds.supply_register = dbug_supply_register;
  dbug_cmds.load_routine = ((void*)0);
  dbug_cmds.load = "dl\r";
  dbug_cmds.loadresp = "\n";
  dbug_cmds.prompt = "dBUG>";
  dbug_cmds.line_term = "\r";
  dbug_cmds.cmd_end = ((void*)0);
  dbug_cmds.target = &dbug_ops;
  dbug_cmds.stopbits = SERIAL_1_STOPBITS;
  dbug_cmds.regnames = ((void*)0);
  dbug_cmds.regname = dbug_regname;
  dbug_cmds.magic = MONITOR_OPS_MAGIC;
}
