#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nfuncs; TYPE_1__* functail; struct TYPE_5__* next; TYPE_1__* funchead; void* dllname; } ;
typedef  TYPE_2__ iheadtype ;
typedef  int /*<<< orphan*/  ifunctype ;
struct TYPE_4__ {int ord; struct TYPE_4__* next; void* name; } ;

/* Variables and functions */
 TYPE_2__* import_list ; 
 scalar_t__ FUNC0 (void*,char const*) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (char const*) ; 

__attribute__((used)) static void
FUNC3 (const char *symbol_name, const char *dll_name, int func_ordinal)
{
  iheadtype **pq;
  iheadtype *q;

  for (pq = &import_list; *pq != NULL; pq = &(*pq)->next)
    {
      if (FUNC0 ((*pq)->dllname, dll_name) == 0)
	{
	  q = *pq;
	  q->functail->next = FUNC1 (sizeof (ifunctype));
	  q->functail = q->functail->next;
	  q->functail->ord  = func_ordinal;
	  q->functail->name = FUNC2 (symbol_name);
	  q->functail->next = NULL;
	  q->nfuncs++;
	  return;
	}
    }

  q = FUNC1 (sizeof (iheadtype));
  q->dllname = FUNC2 (dll_name);
  q->nfuncs = 1;
  q->funchead = FUNC1 (sizeof (ifunctype));
  q->functail = q->funchead;
  q->next = NULL;
  q->functail->name = FUNC2 (symbol_name);
  q->functail->ord  = func_ordinal;
  q->functail->next = NULL;

  *pq = q;
}