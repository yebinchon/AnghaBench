
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_vma ;
struct TYPE_2__ {int flags; scalar_t__ loadresp; int load; int (* load_routine ) (int ,char*,int ) ;} ;


 int MO_SREC_ACK ;
 int SREC_ALL ;
 int bfd_get_start_address (scalar_t__) ;
 TYPE_1__* current_monitor ;
 scalar_t__ exec_bfd ;
 int hashmark ;
 int load_srec (int ,char*,int ,int,int ,int ,int *) ;
 int monitor_debug (char*) ;
 int monitor_desc ;
 int monitor_expect (scalar_t__,int *,int ) ;
 int monitor_expect_prompt (int *,int ) ;
 int monitor_printf (int ) ;
 int * monitor_wait_srec_ack ;
 int sscanf (char*,char*,char*,unsigned long*) ;
 int stub1 (int ,char*,int ) ;
 int write_pc (int ) ;

__attribute__((used)) static void
monitor_load (char *file, int from_tty)
{
  monitor_debug ("MON load\n");

  if (current_monitor->load_routine)
    current_monitor->load_routine (monitor_desc, file, hashmark);
  else
    {
      int n;
      unsigned long load_offset;
      char buf[128];


      n = sscanf (file, "%s 0x%lx", buf, &load_offset);
      if (n > 1)
 file = buf;
      else
 load_offset = 0;

      monitor_printf (current_monitor->load);
      if (current_monitor->loadresp)
 monitor_expect (current_monitor->loadresp, ((void*)0), 0);

      load_srec (monitor_desc, file, (bfd_vma) load_offset,
   32, SREC_ALL, hashmark,
   current_monitor->flags & MO_SREC_ACK ?
   monitor_wait_srec_ack : ((void*)0));

      monitor_expect_prompt (((void*)0), 0);
    }


  if (exec_bfd)
    write_pc (bfd_get_start_address (exec_bfd));
}
