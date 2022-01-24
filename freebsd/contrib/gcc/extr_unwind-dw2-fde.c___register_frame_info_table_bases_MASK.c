#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int from_array; int /*<<< orphan*/  encoding; } ;
struct TYPE_6__ {TYPE_2__ b; scalar_t__ i; } ;
struct TYPE_4__ {void* array; } ;
struct object {struct object* next; TYPE_3__ s; TYPE_1__ u; void* dbase; void* tbase; void* pc_begin; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_EH_PE_omit ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  object_mutex ; 
 struct object* unseen_objects ; 

void
FUNC3 (void *begin, struct object *ob,
				   void *tbase, void *dbase)
{
  ob->pc_begin = (void *)-1;
  ob->tbase = tbase;
  ob->dbase = dbase;
  ob->u.array = begin;
  ob->s.i = 0;
  ob->s.b.from_array = 1;
  ob->s.b.encoding = DW_EH_PE_omit;

  FUNC2 ();
  FUNC0 (&object_mutex);

  ob->next = unseen_objects;
  unseen_objects = ob;

  FUNC1 (&object_mutex);
}