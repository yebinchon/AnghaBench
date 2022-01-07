
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct inf {TYPE_1__* task; } ;
typedef int mach_port_type_t ;
typedef scalar_t__ error_t ;
struct TYPE_2__ {int port; } ;


 int PORTINFO_DETAILS ;
 struct inf* active_inf () ;
 int error (char*,...) ;
 struct value* parse_to_comma_and_eval (char**) ;
 scalar_t__ print_port_info (long,int ,int ,int ,int ) ;
 scalar_t__ print_task_ports_info (int ,int ,int ,int ) ;
 char* safe_strerror (scalar_t__) ;
 int stdout ;
 long value_as_long (struct value*) ;
 int value_free_to_mark (struct value*) ;
 struct value* value_mark () ;

__attribute__((used)) static void
info_port_rights (char *args, mach_port_type_t only)
{
  struct inf *inf = active_inf ();
  struct value *vmark = value_mark ();

  if (args)

    {
      while (*args)
 {
   struct value *val = parse_to_comma_and_eval (&args);
   long right = value_as_long (val);
   error_t err =
   print_port_info (right, 0, inf->task->port, PORTINFO_DETAILS,
      stdout);
   if (err)
     error ("%ld: %s.", right, safe_strerror (err));
 }
    }
  else

    {
      error_t err =
      print_task_ports_info (inf->task->port, only, PORTINFO_DETAILS,
        stdout);
      if (err)
 error ("%s.", safe_strerror (err));
    }

  value_free_to_mark (vmark);
}
