
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONGEST ;
struct TYPE_3__ {char* cmd; char const* term_cmd; scalar_t__ term; scalar_t__ resp_delim; } ;
struct TYPE_4__ {char* (* regname ) (int) ;char** regnames; int flags; TYPE_1__ setreg; } ;


 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 int MO_REGISTER_VALUE_FIRST ;
 int MO_SETREG_INTERACTIVE ;
 TYPE_2__* current_monitor ;
 int monitor_debug (char*,...) ;
 int monitor_expect (scalar_t__,int *,int ) ;
 int monitor_expect_prompt (int *,int ) ;
 int monitor_expect_regexp (int *,int *,int ) ;
 int monitor_printf (char*,char const*,...) ;
 char const* paddr_nz (int ) ;
 int phex (int ,int ) ;
 int read_register (int) ;
 int setreg_resp_delim_pattern ;
 char* stub1 (int) ;

__attribute__((used)) static void
monitor_store_register (int regno)
{
  const char *name;
  ULONGEST val;

  if (current_monitor->regname != ((void*)0))
    name = current_monitor->regname (regno);
  else
    name = current_monitor->regnames[regno];

  if (!name || (*name == '\0'))
    {
      monitor_debug ("MON Cannot store unknown register\n");
      return;
    }

  val = read_register (regno);
  monitor_debug ("MON storeg %d %s\n", regno,
   phex (val, DEPRECATED_REGISTER_RAW_SIZE (regno)));



  if (current_monitor->flags & MO_REGISTER_VALUE_FIRST)
    monitor_printf (current_monitor->setreg.cmd, val, name);
  else if (current_monitor->flags & MO_SETREG_INTERACTIVE)
    monitor_printf (current_monitor->setreg.cmd, name);
  else
    monitor_printf (current_monitor->setreg.cmd, name, val);

  if (current_monitor->setreg.resp_delim)
    {
      monitor_debug ("EXP setreg.resp_delim\n");
      monitor_expect_regexp (&setreg_resp_delim_pattern, ((void*)0), 0);
      if (current_monitor->flags & MO_SETREG_INTERACTIVE)
 monitor_printf ("%s\r", paddr_nz (val));
    }
  if (current_monitor->setreg.term)
    {
      monitor_debug ("EXP setreg.term\n");
      monitor_expect (current_monitor->setreg.term, ((void*)0), 0);
      if (current_monitor->flags & MO_SETREG_INTERACTIVE)
 monitor_printf ("%s\r", paddr_nz (val));
      monitor_expect_prompt (((void*)0), 0);
    }
  else
    monitor_expect_prompt (((void*)0), 0);
  if (current_monitor->setreg.term_cmd)
    {
      monitor_debug ("EXP setreg_termcmd\n");
      monitor_printf ("%s", current_monitor->setreg.term_cmd);
      monitor_expect_prompt (((void*)0), 0);
    }
}
