
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* saved_exitset; struct TYPE_7__* saved_entryset; struct TYPE_7__* next; } ;
typedef TYPE_1__ procinfo ;


 int close_procinfo_files (TYPE_1__*) ;
 int free_syscalls (TYPE_1__*) ;
 int xfree (TYPE_1__*) ;

__attribute__((used)) static void
destroy_one_procinfo (procinfo **list, procinfo *pi)
{
  procinfo *ptr;


  if (pi == *list)
    *list = pi->next;
  else
    for (ptr = *list; ptr; ptr = ptr->next)
      if (ptr->next == pi)
 {
   ptr->next = pi->next;
   break;
 }


  close_procinfo_files (pi);





  xfree (pi->saved_entryset);
  xfree (pi->saved_exitset);
  xfree (pi);
}
