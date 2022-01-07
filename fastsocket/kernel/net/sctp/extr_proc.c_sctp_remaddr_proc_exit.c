
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int proc_net_sctp ;
 int remove_proc_entry (char*,int ) ;

void sctp_remaddr_proc_exit(void)
{
 remove_proc_entry("remaddr", proc_net_sctp);
}
