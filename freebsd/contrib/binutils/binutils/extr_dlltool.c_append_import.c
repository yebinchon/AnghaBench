
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nfuncs; TYPE_1__* functail; struct TYPE_5__* next; TYPE_1__* funchead; void* dllname; } ;
typedef TYPE_2__ iheadtype ;
typedef int ifunctype ;
struct TYPE_4__ {int ord; struct TYPE_4__* next; void* name; } ;


 TYPE_2__* import_list ;
 scalar_t__ strcmp (void*,char const*) ;
 void* xmalloc (int) ;
 void* xstrdup (char const*) ;

__attribute__((used)) static void
append_import (const char *symbol_name, const char *dll_name, int func_ordinal)
{
  iheadtype **pq;
  iheadtype *q;

  for (pq = &import_list; *pq != ((void*)0); pq = &(*pq)->next)
    {
      if (strcmp ((*pq)->dllname, dll_name) == 0)
 {
   q = *pq;
   q->functail->next = xmalloc (sizeof (ifunctype));
   q->functail = q->functail->next;
   q->functail->ord = func_ordinal;
   q->functail->name = xstrdup (symbol_name);
   q->functail->next = ((void*)0);
   q->nfuncs++;
   return;
 }
    }

  q = xmalloc (sizeof (iheadtype));
  q->dllname = xstrdup (dll_name);
  q->nfuncs = 1;
  q->funchead = xmalloc (sizeof (ifunctype));
  q->functail = q->funchead;
  q->next = ((void*)0);
  q->functail->name = xstrdup (symbol_name);
  q->functail->ord = func_ordinal;
  q->functail->next = ((void*)0);

  *pq = q;
}
