#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ bfd_vma ;
typedef  int bfd_size_type ;
struct TYPE_10__ {scalar_t__ size; int /*<<< orphan*/  name; struct TYPE_10__* next; } ;
typedef  TYPE_1__ asection ;
struct TYPE_11__ {TYPE_1__* sections; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**) ; 
 TYPE_4__* output_bfd ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sort_sections_by_lma ; 
 TYPE_1__** FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9 (void)
{
  asection *s, *os;
  asection **sections, **spp;
  unsigned int count;
  bfd_vma s_start;
  bfd_vma s_end;
  bfd_vma os_start;
  bfd_vma os_end;
  bfd_size_type amt;

  if (FUNC3 (output_bfd) <= 1)
    return;

  amt = FUNC3 (output_bfd) * sizeof (asection *);
  sections = FUNC8 (amt);

  /* Scan all sections in the output list.  */
  count = 0;
  for (s = output_bfd->sections; s != NULL; s = s->next)
    {
      /* Only consider loadable sections with real contents.  */
      if (FUNC0 (s) || s->size == 0)
	continue;

      sections[count] = s;
      count++;
    }

  if (count <= 1)
    return;

  FUNC7 (sections, (size_t) count, sizeof (asection *),
	 sort_sections_by_lma);

  spp = sections;
  s = *spp++;
  s_start = FUNC4 (output_bfd, s);
  s_end = s_start + FUNC1 (s->size) - 1;
  for (count--; count; count--)
    {
      /* We must check the sections' LMA addresses not their VMA
	 addresses because overlay sections can have overlapping VMAs
	 but they must have distinct LMAs.  */
      os = s;
      os_start = s_start;
      os_end = s_end;
      s = *spp++;
      s_start = FUNC4 (output_bfd, s);
      s_end = s_start + FUNC1 (s->size) - 1;

      /* Look for an overlap.  */
      if (s_end >= os_start && s_start <= os_end)
	FUNC5 (FUNC2("%X%P: section %s [%V -> %V] overlaps section %s [%V -> %V]\n"),
	       s->name, s_start, s_end, os->name, os_start, os_end);
    }

  FUNC6 (sections);
}