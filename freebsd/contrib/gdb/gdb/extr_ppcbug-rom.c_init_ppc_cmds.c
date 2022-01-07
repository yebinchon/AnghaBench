
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct target_ops {int dummy; } ;
struct TYPE_8__ {char* cmd; char* resp_delim; int * term_cmd; int * term; } ;
struct TYPE_7__ {char* cmd; int * term_cmd; int * term; int * resp_delim; } ;
struct TYPE_6__ {char* cmdb; char* cmdw; char* cmdl; char* resp_delim; int * term_cmd; int * term; int * cmdll; } ;
struct TYPE_5__ {char* cmdb; char* cmdw; char* cmdl; int * term_cmd; int * term; int * resp_delim; int * cmdll; } ;
struct monitor_ops {int flags; char* cont; char* step; char* set_break; char* clr_break; char* clr_all_break; char* fill; char* register_pattern; char* dump_registers; char* load; char* prompt; char* line_term; int magic; int regnames; int stopbits; struct target_ops* target; int * cmd_end; int * loadresp; int * load_routine; int supply_register; TYPE_4__ getreg; TYPE_3__ setreg; TYPE_2__ getmem; TYPE_1__ setmem; int * stop; int init; } ;


 int MONITOR_OPS_MAGIC ;
 int MO_CLR_BREAK_USES_ADDR ;
 int MO_HANDLE_NL ;
 int SERIAL_1_STOPBITS ;
 int ppcbug_inits ;
 int ppcbug_regnames ;
 int ppcbug_supply_register ;

__attribute__((used)) static void
init_ppc_cmds (char *LOAD_CMD,
        struct monitor_ops *OPS,
        struct target_ops *targops)
{
  OPS->flags = MO_CLR_BREAK_USES_ADDR | MO_HANDLE_NL;
  OPS->init = ppcbug_inits;
  OPS->cont = "g\r";
  OPS->step = "t\r";
  OPS->stop = ((void*)0);
  OPS->set_break = "br %x\r";
  OPS->clr_break = "nobr %x\r";
  OPS->clr_all_break = "nobr\r";
  OPS->fill = "bf %x:%x %x;b\r";
  OPS->setmem.cmdb = "ms %x %02x\r";
  OPS->setmem.cmdw = "ms %x %04x\r";
  OPS->setmem.cmdl = "ms %x %08x\r";
  OPS->setmem.cmdll = ((void*)0);
  OPS->setmem.resp_delim = ((void*)0);
  OPS->setmem.term = ((void*)0);
  OPS->setmem.term_cmd = ((void*)0);
  OPS->getmem.cmdb = "md %x:%x;b\r";
  OPS->getmem.cmdw = "md %x:%x;b\r";
  OPS->getmem.cmdl = "md %x:%x;b\r";
  OPS->getmem.cmdll = ((void*)0);
  OPS->getmem.resp_delim = " ";
  OPS->getmem.term = ((void*)0);
  OPS->getmem.term_cmd = ((void*)0);
  OPS->setreg.cmd = "rs %s %x\r";
  OPS->setreg.resp_delim = ((void*)0);
  OPS->setreg.term = ((void*)0);
  OPS->setreg.term_cmd = ((void*)0);
  OPS->getreg.cmd = "rs %s\r";
  OPS->getreg.resp_delim = "=";
  OPS->getreg.term = ((void*)0);
  OPS->getreg.term_cmd = ((void*)0);
  OPS->register_pattern = "\\(\\w+\\) +=\\([0-9a-fA-F]+\\b\\)";
  OPS->supply_register = ppcbug_supply_register;
  OPS->dump_registers = "rd\r";
  OPS->load_routine = ((void*)0);
  OPS->load = LOAD_CMD;
  OPS->loadresp = ((void*)0);
  OPS->prompt = "PPC1-Bug>";
  OPS->line_term = "\r";
  OPS->cmd_end = ((void*)0);
  OPS->target = targops;
  OPS->stopbits = SERIAL_1_STOPBITS;
  OPS->regnames = ppcbug_regnames;
  OPS->magic = MONITOR_OPS_MAGIC;
}
