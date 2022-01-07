
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_pid {int pid; struct per_pid* next; } ;


 struct per_pid* all_data ;
 int assert (int ) ;
 struct per_pid* zalloc (int) ;

__attribute__((used)) static struct per_pid *find_create_pid(int pid)
{
 struct per_pid *cursor = all_data;

 while (cursor) {
  if (cursor->pid == pid)
   return cursor;
  cursor = cursor->next;
 }
 cursor = zalloc(sizeof(*cursor));
 assert(cursor != ((void*)0));
 cursor->pid = pid;
 cursor->next = all_data;
 all_data = cursor;
 return cursor;
}
