
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int cmdline_count; struct cmdline_list* cmdlist; struct cmdline* cmdlines; } ;
struct cmdline_list {struct cmdline_list* next; int comm; int pid; } ;
struct cmdline {int comm; int pid; } ;


 int cmdline_cmp ;
 int free (struct cmdline_list*) ;
 struct cmdline* malloc (int) ;
 int qsort (struct cmdline*,int,int,int ) ;

__attribute__((used)) static int cmdline_init(struct pevent *pevent)
{
 struct cmdline_list *cmdlist = pevent->cmdlist;
 struct cmdline_list *item;
 struct cmdline *cmdlines;
 int i;

 cmdlines = malloc(sizeof(*cmdlines) * pevent->cmdline_count);
 if (!cmdlines)
  return -1;

 i = 0;
 while (cmdlist) {
  cmdlines[i].pid = cmdlist->pid;
  cmdlines[i].comm = cmdlist->comm;
  i++;
  item = cmdlist;
  cmdlist = cmdlist->next;
  free(item);
 }

 qsort(cmdlines, pevent->cmdline_count, sizeof(*cmdlines), cmdline_cmp);

 pevent->cmdlines = cmdlines;
 pevent->cmdlist = ((void*)0);

 return 0;
}
