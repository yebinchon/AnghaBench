
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int proc_net_sctp ;
 int remove_proc_entry (char*,int ) ;

void sctp_dbg_objcnt_exit(void)
{
 remove_proc_entry("sctp_dbg_objcnt", proc_net_sctp);
}
