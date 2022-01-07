
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int dummy; } ;


 char* find_cmdline (struct pevent*,int) ;

const char *pevent_data_comm_from_pid(struct pevent *pevent, int pid)
{
 const char *comm;

 comm = find_cmdline(pevent, pid);
 return comm;
}
