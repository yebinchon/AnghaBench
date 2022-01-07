
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ term_cmd; scalar_t__ term; scalar_t__ resp_delim; int cmd; } ;
struct TYPE_4__ {char* (* regname ) (int) ;char** regnames; int flags; TYPE_1__ getreg; } ;


 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 int MAX_REGISTER_SIZE ;
 int MO_32_REGS_PAIRED ;
 int MO_HEX_PREFIX ;
 char* alloca (int) ;
 TYPE_2__* current_monitor ;
 int error (char*,int) ;
 int isxdigit (int) ;
 int memset (char*,int ,int) ;
 int monitor_debug (char*,...) ;
 int monitor_expect (scalar_t__,int *,int ) ;
 int monitor_expect_prompt (int *,int ) ;
 int monitor_printf (scalar_t__,...) ;
 int monitor_supply_register (int,char*) ;
 int readchar (int ) ;
 char* stub1 (int) ;
 int supply_register (int,char*) ;
 int timeout ;

__attribute__((used)) static void
monitor_fetch_register (int regno)
{
  const char *name;
  char *zerobuf;
  char *regbuf;
  int i;

  regbuf = alloca (MAX_REGISTER_SIZE * 2 + 1);
  zerobuf = alloca (MAX_REGISTER_SIZE);
  memset (zerobuf, 0, MAX_REGISTER_SIZE);

  if (current_monitor->regname != ((void*)0))
    name = current_monitor->regname (regno);
  else
    name = current_monitor->regnames[regno];
  monitor_debug ("MON fetchreg %d '%s'\n", regno, name ? name : "(null name)");

  if (!name || (*name == '\0'))
    {
      monitor_debug ("No register known for %d\n", regno);
      supply_register (regno, zerobuf);
      return;
    }



  monitor_printf (current_monitor->getreg.cmd, name);





  if (current_monitor->getreg.resp_delim)
    {
      monitor_debug ("EXP getreg.resp_delim\n");
      monitor_expect (current_monitor->getreg.resp_delim, ((void*)0), 0);

      if (current_monitor->flags & MO_32_REGS_PAIRED
   && (regno & 1) != 0 && regno < 32)
 {
   monitor_debug ("EXP getreg.resp_delim\n");
   monitor_expect (current_monitor->getreg.resp_delim, ((void*)0), 0);
 }
    }


  if (current_monitor->flags & MO_HEX_PREFIX)
    {
      int c;
      c = readchar (timeout);
      while (c == ' ')
 c = readchar (timeout);
      if ((c == '0') && ((c = readchar (timeout)) == 'x'))
 ;
      else
 error ("Bad value returned from monitor while fetching register %x.",
        regno);
    }





  for (i = 0; i < DEPRECATED_REGISTER_RAW_SIZE (regno) * 2; i++)
    {
      int c;
      c = readchar (timeout);
      while (c == ' ')
 c = readchar (timeout);

      if (!isxdigit (c))
 break;

      regbuf[i] = c;
    }

  regbuf[i] = '\000';
  monitor_debug ("REGVAL '%s'\n", regbuf);






  if (current_monitor->getreg.term)
    {
      monitor_debug ("EXP getreg.term\n");
      monitor_expect (current_monitor->getreg.term, ((void*)0), 0);
    }

  if (current_monitor->getreg.term_cmd)
    {
      monitor_debug ("EMIT getreg.term.cmd\n");
      monitor_printf (current_monitor->getreg.term_cmd);
    }
  if (!current_monitor->getreg.term ||
      current_monitor->getreg.term_cmd)
    monitor_expect_prompt (((void*)0), 0);

  monitor_supply_register (regno, regbuf);
}
