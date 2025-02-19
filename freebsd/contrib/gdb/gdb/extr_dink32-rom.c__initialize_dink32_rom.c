
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {char* cmd; char* resp_delim; } ;
struct TYPE_11__ {char* cmd; char* term; } ;
struct TYPE_10__ {char* cmdb; char* resp_delim; } ;
struct TYPE_9__ {char* cmdb; char* cmdw; char* cmdl; char* term; } ;
struct TYPE_14__ {int flags; char* cont; char* step; char* set_break; char* clr_break; char* fill; char* dump_registers; char* register_pattern; char* load; char* loadresp; char* prompt; char* line_term; int magic; int regnames; int stopbits; TYPE_5__* target; int supply_register; TYPE_4__ getreg; TYPE_3__ setreg; TYPE_2__ getmem; TYPE_1__ setmem; int init; } ;
struct TYPE_13__ {char* to_shortname; char* to_longname; char* to_doc; int to_open; } ;


 int MONITOR_OPS_MAGIC ;
 int MO_32_REGS_PAIRED ;
 int MO_CLR_BREAK_1_BASED ;
 int MO_FILL_USES_ADDR ;
 int MO_GETMEM_16_BOUNDARY ;
 int MO_GETMEM_NEEDS_RANGE ;
 int MO_HANDLE_NL ;
 int MO_HEX_PREFIX ;
 int MO_SETMEM_INTERACTIVE ;
 int MO_SETREG_INTERACTIVE ;
 int MO_SREC_ACK ;
 int MO_SREC_ACK_ROTATE ;
 int SERIAL_1_STOPBITS ;
 int add_target (TYPE_5__*) ;
 TYPE_7__ dink32_cmds ;
 int dink32_inits ;
 int dink32_open ;
 TYPE_5__ dink32_ops ;
 int dink32_regnames ;
 int dink32_supply_register ;
 int init_monitor_ops (TYPE_5__*) ;

void
_initialize_dink32_rom (void)
{
  dink32_cmds.flags = MO_HEX_PREFIX | MO_GETMEM_NEEDS_RANGE | MO_FILL_USES_ADDR | MO_HANDLE_NL | MO_32_REGS_PAIRED | MO_SETREG_INTERACTIVE | MO_SETMEM_INTERACTIVE | MO_GETMEM_16_BOUNDARY | MO_CLR_BREAK_1_BASED | MO_SREC_ACK | MO_SREC_ACK_ROTATE;
  dink32_cmds.init = dink32_inits;
  dink32_cmds.cont = "go +\r";
  dink32_cmds.step = "tr +\r";
  dink32_cmds.set_break = "bp 0x%x\r";
  dink32_cmds.clr_break = "bp %d\r";



  dink32_cmds.setmem.cmdb = "mm -b %x\r";
  dink32_cmds.setmem.cmdw = "mm -w %x\r";
  dink32_cmds.setmem.cmdl = "mm %x\r";
  dink32_cmds.setmem.term = " ?  ";
  dink32_cmds.getmem.cmdb = "md %x\r";
  dink32_cmds.getmem.resp_delim = "        ";
  dink32_cmds.setreg.cmd = "rm %s\r";
  dink32_cmds.setreg.term = " ?  ";
  dink32_cmds.getreg.cmd = "rd %s\r";
  dink32_cmds.getreg.resp_delim = ": ";
  dink32_cmds.dump_registers = "rd r\r";
  dink32_cmds.register_pattern = "\\(\\w+\\) +=\\([0-9a-fA-F]+\\b\\)";
  dink32_cmds.supply_register = dink32_supply_register;

  dink32_cmds.load = "dl -k\r";
  dink32_cmds.loadresp = "Set Input Port : set to Keyboard Port\r";
  dink32_cmds.prompt = "DINK32_603 >>";
  dink32_cmds.line_term = "\r";
  dink32_cmds.target = &dink32_ops;
  dink32_cmds.stopbits = SERIAL_1_STOPBITS;
  dink32_cmds.regnames = dink32_regnames;
  dink32_cmds.magic = MONITOR_OPS_MAGIC;

  init_monitor_ops (&dink32_ops);

  dink32_ops.to_shortname = "dink32";
  dink32_ops.to_longname = "DINK32 monitor";
  dink32_ops.to_doc = "Debug using the DINK32 monitor.\nSpecify the serial device it is connected to (e.g. /dev/ttya).";

  dink32_ops.to_open = dink32_open;

  add_target (&dink32_ops);
}
