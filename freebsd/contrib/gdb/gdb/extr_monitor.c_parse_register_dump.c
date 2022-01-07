
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct re_registers {int* end; int* start; } ;
struct TYPE_2__ {int (* supply_register ) (char*,int,char*,int) ;} ;


 TYPE_1__* current_monitor ;
 int memset (struct re_registers*,int ,int) ;
 int monitor_debug (char*) ;
 int re_search (int *,char*,int,int ,int,struct re_registers*) ;
 int register_pattern ;
 int stub1 (char*,int,char*,int) ;

__attribute__((used)) static void
parse_register_dump (char *buf, int len)
{
  monitor_debug ("MON Parsing  register dump\n");
  while (1)
    {
      int regnamelen, vallen;
      char *regname, *val;


      struct re_registers register_strings;

      memset (&register_strings, 0, sizeof (struct re_registers));

      if (re_search (&register_pattern, buf, len, 0, len,
       &register_strings) == -1)
 break;

      regnamelen = register_strings.end[1] - register_strings.start[1];
      regname = buf + register_strings.start[1];
      vallen = register_strings.end[2] - register_strings.start[2];
      val = buf + register_strings.start[2];

      current_monitor->supply_register (regname, regnamelen, val, vallen);

      buf += register_strings.end[0];
      len -= register_strings.end[0];
    }
}
