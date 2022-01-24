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
struct TYPE_9__ {char const* name; int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
struct section_hash_entry {TYPE_3__ section; TYPE_1__ root; } ;
typedef  int /*<<< orphan*/ * sec_ptr ;
typedef  int /*<<< orphan*/  flagword ;
struct TYPE_8__ {int /*<<< orphan*/  section_htab; scalar_t__ output_has_begun; } ;
typedef  TYPE_2__ bfd ;
typedef  TYPE_3__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  bfd_error_invalid_operation ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct section_hash_entry* FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

sec_ptr
FUNC4 (bfd *abfd, const char *name,
				    flagword flags)
{
  struct section_hash_entry *sh;
  asection *newsect;

  if (abfd->output_has_begun)
    {
      FUNC2 (bfd_error_invalid_operation);
      return NULL;
    }

  sh = FUNC3 (&abfd->section_htab, name, TRUE, FALSE);
  if (sh == NULL)
    return NULL;

  newsect = &sh->section;
  if (newsect->name != NULL)
    {
      /* We are making a section of the same name.  Put it in the
	 section hash table.  Even though we can't find it directly by a
	 hash lookup, we'll be able to find the section by traversing
	 sh->root.next quicker than looking at all the bfd sections.  */
      struct section_hash_entry *new_sh;
      new_sh = (struct section_hash_entry *)
	FUNC0 (NULL, &abfd->section_htab, name);
      if (new_sh == NULL)
	return NULL;

      new_sh->root = sh->root;
      sh->root.next = &new_sh->root;
      newsect = &new_sh->section;
    }

  newsect->flags = flags;
  newsect->name = name;
  return FUNC1 (abfd, newsect);
}