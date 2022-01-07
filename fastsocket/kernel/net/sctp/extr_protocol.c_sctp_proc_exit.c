
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proc_net; } ;


 TYPE_1__ init_net ;
 int percpu_counter_destroy (int *) ;
 int * proc_net_sctp ;
 int remove_proc_entry (char*,int ) ;
 int sctp_assocs_proc_exit () ;
 int sctp_eps_proc_exit () ;
 int sctp_remaddr_proc_exit () ;
 int sctp_snmp_proc_exit () ;
 int sctp_sockets_allocated ;

__attribute__((used)) static void sctp_proc_exit(void)
{
 percpu_counter_destroy(&sctp_sockets_allocated);
}
