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
struct set_info {scalar_t__ reloc; scalar_t__ count; struct set_element* elements; struct bfd_link_hash_entry* h; struct set_info* next; } ;
struct set_element {char const* name; struct set_element* next; int /*<<< orphan*/  value; TYPE_2__* section; } ;
struct TYPE_4__ {int /*<<< orphan*/  string; } ;
struct bfd_link_hash_entry {TYPE_1__ root; } ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  scalar_t__ bfd_reloc_code_real_type ;
struct TYPE_5__ {int /*<<< orphan*/ * owner; } ;
typedef  TYPE_2__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct set_info* sets ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 

void
FUNC5 (struct bfd_link_hash_entry *h,
		      bfd_reloc_code_real_type reloc,
		      const char *name,
		      asection *section,
		      bfd_vma value)
{
  struct set_info *p;
  struct set_element *e;
  struct set_element **epp;

  for (p = sets; p != NULL; p = p->next)
    if (p->h == h)
      break;

  if (p == NULL)
    {
      p = FUNC4 (sizeof (struct set_info));
      p->next = sets;
      sets = p;
      p->h = h;
      p->reloc = reloc;
      p->count = 0;
      p->elements = NULL;
    }
  else
    {
      if (p->reloc != reloc)
	{
	  FUNC2 (FUNC0("%P%X: Different relocs used in set %s\n"),
		 h->root.string);
	  return;
	}

      /* Don't permit a set to be constructed from different object
         file formats.  The same reloc may have different results.  We
         actually could sometimes handle this, but the case is
         unlikely to ever arise.  Sometimes constructor symbols are in
         unusual sections, such as the absolute section--this appears
         to be the case in Linux a.out--and in such cases we just
         assume everything is OK.  */
      if (p->elements != NULL
	  && section->owner != NULL
	  && p->elements->section->owner != NULL
	  && FUNC3 (FUNC1 (section->owner),
		     FUNC1 (p->elements->section->owner)) != 0)
	{
	  FUNC2 (FUNC0("%P%X: Different object file formats composing set %s\n"),
		 h->root.string);
	  return;
	}
    }

  e = FUNC4 (sizeof (struct set_element));
  e->next = NULL;
  e->name = name;
  e->section = section;
  e->value = value;

  for (epp = &p->elements; *epp != NULL; epp = &(*epp)->next)
    ;
  *epp = e;

  ++p->count;
}