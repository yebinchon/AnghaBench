
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ resp_delim; } ;
struct TYPE_8__ {scalar_t__ resp_delim; } ;
struct TYPE_7__ {scalar_t__ resp_delim; } ;
struct monitor_ops {scalar_t__ magic; int flags; char** init; int num_breakpoints; char* clr_all_break; char* line_term; int * set_break; scalar_t__ stop; int stopbits; TYPE_3__ setreg; TYPE_2__ setmem; TYPE_1__ getmem; scalar_t__ register_pattern; TYPE_4__* target; } ;
struct TYPE_10__ {char* to_shortname; } ;
typedef int CORE_ADDR ;


 scalar_t__ MONITOR_OPS_MAGIC ;
 int MO_NO_ECHO_ON_OPEN ;
 int baud_rate ;
 int * breakaddr ;
 int compile_pattern (scalar_t__,int *,int ) ;
 struct monitor_ops* current_monitor ;
 scalar_t__ dev_name ;
 int error (char*,...) ;
 int getmem_resp_delim_fastmap ;
 int getmem_resp_delim_pattern ;
 int inferior_ptid ;
 int memset (int *,int ,int) ;
 int monitor_debug (char*) ;
 int monitor_desc ;
 int monitor_expect_prompt (int *,int ) ;
 int monitor_printf (char*) ;
 int monitor_printf_noecho (char*) ;
 int monitor_stop () ;
 int perror_with_name (scalar_t__) ;
 int pid_to_ptid (int) ;
 int printf_unfiltered (char*,char*,scalar_t__) ;
 int push_target (TYPE_4__*) ;
 int register_fastmap ;
 int register_pattern ;
 int serial_close (int ) ;
 int serial_flush_input (int ) ;
 int serial_open (scalar_t__) ;
 int serial_raw (int ) ;
 scalar_t__ serial_setbaudrate (int ,int) ;
 int serial_setstopbits (int ,int ) ;
 int setmem_resp_delim_fastmap ;
 int setmem_resp_delim_pattern ;
 int setreg_resp_delim_fastmap ;
 int setreg_resp_delim_pattern ;
 int start_remote () ;
 TYPE_4__* targ_ops ;
 int target_preopen (int) ;
 int unpush_target (TYPE_4__*) ;
 int xfree (scalar_t__) ;
 scalar_t__ xmalloc (int) ;
 scalar_t__ xstrdup (char*) ;

void
monitor_open (char *args, struct monitor_ops *mon_ops, int from_tty)
{
  char *name;
  char **p;

  if (mon_ops->magic != MONITOR_OPS_MAGIC)
    error ("Magic number of monitor_ops struct wrong.");

  targ_ops = mon_ops->target;
  name = targ_ops->to_shortname;

  if (!args)
    error ("Use `target %s DEVICE-NAME' to use a serial port, or \n`target %s HOST-NAME:PORT-NUMBER' to use a network connection.", name, name);


  target_preopen (from_tty);



  if (mon_ops->register_pattern)
    compile_pattern (mon_ops->register_pattern, &register_pattern,
       register_fastmap);

  if (mon_ops->getmem.resp_delim)
    compile_pattern (mon_ops->getmem.resp_delim, &getmem_resp_delim_pattern,
       getmem_resp_delim_fastmap);

  if (mon_ops->setmem.resp_delim)
    compile_pattern (mon_ops->setmem.resp_delim, &setmem_resp_delim_pattern,
                     setmem_resp_delim_fastmap);

  if (mon_ops->setreg.resp_delim)
    compile_pattern (mon_ops->setreg.resp_delim, &setreg_resp_delim_pattern,
                     setreg_resp_delim_fastmap);

  unpush_target (targ_ops);

  if (dev_name)
    xfree (dev_name);
  dev_name = xstrdup (args);

  monitor_desc = serial_open (dev_name);

  if (!monitor_desc)
    perror_with_name (dev_name);

  if (baud_rate != -1)
    {
      if (serial_setbaudrate (monitor_desc, baud_rate))
 {
   serial_close (monitor_desc);
   perror_with_name (dev_name);
 }
    }

  serial_raw (monitor_desc);

  serial_flush_input (monitor_desc);



  serial_setstopbits (monitor_desc, mon_ops->stopbits);

  current_monitor = mon_ops;




  if (current_monitor->stop)
    {
      monitor_stop ();
      if ((current_monitor->flags & MO_NO_ECHO_ON_OPEN) == 0)
 {
   monitor_debug ("EXP Open echo\n");
   monitor_expect_prompt (((void*)0), 0);
 }
    }


  for (p = mon_ops->init; *p != ((void*)0); p++)
    {



      if ((current_monitor->flags & MO_NO_ECHO_ON_OPEN) == 0)
 monitor_printf (*p);
      else
 monitor_printf_noecho (*p);
      monitor_expect_prompt (((void*)0), 0);
    }

  serial_flush_input (monitor_desc);


  if (mon_ops->set_break != ((void*)0))
    {
      if (mon_ops->num_breakpoints == 0)
 mon_ops->num_breakpoints = 8;

      breakaddr = (CORE_ADDR *) xmalloc (mon_ops->num_breakpoints * sizeof (CORE_ADDR));
      memset (breakaddr, 0, mon_ops->num_breakpoints * sizeof (CORE_ADDR));
    }



  if (mon_ops->clr_all_break)
    {
      monitor_printf (mon_ops->clr_all_break);
      monitor_expect_prompt (((void*)0), 0);
    }

  if (from_tty)
    printf_unfiltered ("Remote target %s connected to %s\n", name, dev_name);

  push_target (targ_ops);

  inferior_ptid = pid_to_ptid (42000);



  monitor_printf (current_monitor->line_term);

  start_remote ();
}
