#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mem_ref {int /*<<< orphan*/ * vops; struct mem_ref* next; } ;
typedef  int /*<<< orphan*/  bitmap_head ;
typedef  int /*<<< orphan*/ * bitmap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bitmap_default_obstack ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4 (struct mem_ref *mem_refs, bitmap clobbered_vops)
{
  bitmap_head tmp, all_vops;
  struct mem_ref *ref;

  FUNC2 (&tmp, &bitmap_default_obstack);
  FUNC2 (&all_vops, &bitmap_default_obstack);

  for (ref = mem_refs; ref; ref = ref->next)
    {
      /* The vops that are already in all_vops are accessed by more than
	 one memory reference.  */
      FUNC0 (&tmp, &all_vops, ref->vops);
      FUNC3 (clobbered_vops, &tmp);
      FUNC1 (&tmp);

      FUNC3 (&all_vops, ref->vops);
    }

  FUNC1 (&all_vops);
}