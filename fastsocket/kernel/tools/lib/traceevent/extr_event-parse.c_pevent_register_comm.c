
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int cmdline_count; struct cmdline_list* cmdlist; scalar_t__ cmdlines; } ;
struct cmdline_list {int pid; struct cmdline_list* next; int comm; } ;


 int add_new_comm (struct pevent*,char const*,int) ;
 int free (struct cmdline_list*) ;
 struct cmdline_list* malloc (int) ;
 int strdup (char const*) ;

int pevent_register_comm(struct pevent *pevent, const char *comm, int pid)
{
 struct cmdline_list *item;

 if (pevent->cmdlines)
  return add_new_comm(pevent, comm, pid);

 item = malloc(sizeof(*item));
 if (!item)
  return -1;

 item->comm = strdup(comm);
 if (!item->comm) {
  free(item);
  return -1;
 }
 item->pid = pid;
 item->next = pevent->cmdlist;

 pevent->cmdlist = item;
 pevent->cmdline_count++;

 return 0;
}
