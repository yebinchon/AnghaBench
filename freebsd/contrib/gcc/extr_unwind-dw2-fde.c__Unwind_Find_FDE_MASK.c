#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int encoding; scalar_t__ mixed_encoding; } ;
struct TYPE_8__ {TYPE_1__ b; } ;
struct object {void* pc_begin; TYPE_2__ s; int /*<<< orphan*/  dbase; int /*<<< orphan*/  tbase; struct object* next; } ;
struct dwarf_eh_bases {void* func; int /*<<< orphan*/  dbase; int /*<<< orphan*/  tbase; } ;
struct TYPE_9__ {int /*<<< orphan*/  pc_begin; } ;
typedef  TYPE_3__ fde ;
typedef  scalar_t__ _Unwind_Ptr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,struct object*) ; 
 int FUNC3 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  object_mutex ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 TYPE_3__* FUNC6 (struct object*,void*) ; 
 struct object* seen_objects ; 
 struct object* unseen_objects ; 

const fde *
FUNC7 (void *pc, struct dwarf_eh_bases *bases)
{
  struct object *ob;
  const fde *f = NULL;

  FUNC4 ();
  FUNC0 (&object_mutex);

  /* Linear search through the classified objects, to find the one
     containing the pc.  Note that pc_begin is sorted descending, and
     we expect objects to be non-overlapping.  */
  for (ob = seen_objects; ob; ob = ob->next)
    if (pc >= ob->pc_begin)
      {
	f = FUNC6 (ob, pc);
	if (f)
	  goto fini;
	break;
      }

  /* Classify and search the objects we've not yet processed.  */
  while ((ob = unseen_objects))
    {
      struct object **p;

      unseen_objects = ob->next;
      f = FUNC6 (ob, pc);

      /* Insert the object into the classified list.  */
      for (p = &seen_objects; *p ; p = &(*p)->next)
	if ((*p)->pc_begin < ob->pc_begin)
	  break;
      ob->next = *p;
      *p = ob;

      if (f)
	goto fini;
    }

 fini:
  FUNC1 (&object_mutex);

  if (f)
    {
      int encoding;
      _Unwind_Ptr func;

      bases->tbase = ob->tbase;
      bases->dbase = ob->dbase;

      encoding = ob->s.b.encoding;
      if (ob->s.b.mixed_encoding)
	encoding = FUNC3 (f);
      FUNC5 (encoding, FUNC2 (encoding, ob),
				    f->pc_begin, &func);
      bases->func = (void *) func;
    }

  return f;
}