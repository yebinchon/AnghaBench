
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NO_CMDLINE_MAP ;
 int PID_MAX_DEFAULT ;
 int __raw_spin_lock (int *) ;
 int __raw_spin_unlock (int *) ;
 unsigned int* map_pid_to_cmdline ;
 int preempt_disable () ;
 int preempt_enable () ;
 char** saved_cmdlines ;
 int strcpy (char*,char*) ;
 int trace_cmdline_lock ;

void trace_find_cmdline(int pid, char comm[])
{
 unsigned map;

 if (!pid) {
  strcpy(comm, "<idle>");
  return;
 }

 if (pid > PID_MAX_DEFAULT) {
  strcpy(comm, "<...>");
  return;
 }

 preempt_disable();
 __raw_spin_lock(&trace_cmdline_lock);
 map = map_pid_to_cmdline[pid];
 if (map != NO_CMDLINE_MAP)
  strcpy(comm, saved_cmdlines[map]);
 else
  strcpy(comm, "<...>");

 __raw_spin_unlock(&trace_cmdline_lock);
 preempt_enable();
}
