#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char const* name; struct TYPE_5__* next; int /*<<< orphan*/  used; void* value; } ;
typedef  TYPE_1__ segment_type ;
typedef  void* bfd_vma ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (char*,char const**,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* segments ; 
 TYPE_1__* FUNC5 (int) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 

__attribute__((used)) static void
FUNC7 (const char *section, char *valstr)
{
  const char *name;
  const char *end;
  segment_type *seg;

  bfd_vma val = FUNC1 (valstr, &end, 16);
  if (*end)
    FUNC2 (FUNC0("%P%F: invalid hex number `%s'\n"), valstr);
  /* If we already have an entry for this segment, update the existing
     value.  */
  name = section + 1;
  for (seg = segments; seg; seg = seg->next)
    if (FUNC6 (seg->name, name) == 0)
      {
	seg->value = val;
	return;
      }
  /* There was no existing value so we must create a new segment
     entry.  */
  seg = FUNC5 (sizeof (*seg));
  seg->name = name;
  seg->value = val;
  seg->used = FALSE;
  /* Add it to the linked list of segments.  */
  seg->next = segments;
  segments = seg;
  /* Historically, -Ttext and friends set the base address of a
     particular section.  For backwards compatibility, we still do
     that.  If a SEGMENT_START directive is seen, the section address
     assignment will be disabled.  */
  FUNC4 (section, FUNC3 (val), seg);
}