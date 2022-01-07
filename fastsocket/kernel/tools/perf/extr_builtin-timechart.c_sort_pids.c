
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_pid {scalar_t__ ppid; scalar_t__ pid; struct per_pid* next; } ;


 struct per_pid* all_data ;

__attribute__((used)) static void sort_pids(void)
{
 struct per_pid *new_list, *p, *cursor, *prev;


 new_list = ((void*)0);

 while (all_data) {
  p = all_data;
  all_data = p->next;
  p->next = ((void*)0);

  if (new_list == ((void*)0)) {
   new_list = p;
   p->next = ((void*)0);
   continue;
  }
  prev = ((void*)0);
  cursor = new_list;
  while (cursor) {
   if (cursor->ppid > p->ppid ||
    (cursor->ppid == p->ppid && cursor->pid > p->pid)) {

    if (prev) {
     p->next = prev->next;
     prev->next = p;
     cursor = ((void*)0);
     continue;
    } else {
     p->next = new_list;
     new_list = p;
     cursor = ((void*)0);
     continue;
    }
   }

   prev = cursor;
   cursor = cursor->next;
   if (!cursor)
    prev->next = p;
  }
 }
 all_data = new_list;
}
