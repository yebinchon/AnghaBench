#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct elf_segment_map {scalar_t__ p_type; int count; struct elf_segment_map* next; int /*<<< orphan*/ ** sections; } ;
struct bfd_link_info {int dummy; } ;
typedef  unsigned int bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_4__ {struct elf_segment_map* segment_map; } ;
struct TYPE_3__ {scalar_t__ ovl_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ PT_LOAD ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct elf_segment_map* FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC5 (bfd *abfd, struct bfd_link_info *info)
{
  asection *toe, *s;
  struct elf_segment_map *m;
  unsigned int i;

  if (info == NULL)
    return TRUE;

  toe = FUNC0 (abfd, ".toe");
  for (m = FUNC2 (abfd)->segment_map; m != NULL; m = m->next)
    if (m->p_type == PT_LOAD && m->count > 1)
      for (i = 0; i < m->count; i++)
	if ((s = m->sections[i]) == toe
	    || FUNC4 (s)->ovl_index != 0)
	  {
	    struct elf_segment_map *m2;
	    bfd_vma amt;

	    if (i + 1 < m->count)
	      {
		amt = sizeof (struct elf_segment_map);
		amt += (m->count - (i + 2)) * sizeof (m->sections[0]);
		m2 = FUNC1 (abfd, amt);
		if (m2 == NULL)
		  return FALSE;
		m2->count = m->count - (i + 1);
		FUNC3 (m2->sections, m->sections + i + 1,
			m2->count * sizeof (m->sections[0]));
		m2->p_type = PT_LOAD;
		m2->next = m->next;
		m->next = m2;
	      }
	    m->count = 1;
	    if (i != 0)
	      {
		m->count = i;
		amt = sizeof (struct elf_segment_map);
		m2 = FUNC1 (abfd, amt);
		if (m2 == NULL)
		  return FALSE;
		m2->p_type = PT_LOAD;
		m2->count = 1;
		m2->sections[0] = s;
		m2->next = m->next;
		m->next = m2;
	      }
	    break;
	  }

  return TRUE;
}