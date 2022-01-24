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
struct mem_ref_group {struct mem_ref* refs; struct mem_ref_group* next; } ;
struct mem_ref {scalar_t__ issue_prefetch_p; struct mem_ref* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mem_ref*,unsigned int,unsigned int) ; 

__attribute__((used)) static void
FUNC1 (struct mem_ref_group *groups,
		  unsigned unroll_factor, unsigned ahead)
{
  struct mem_ref *ref;

  for (; groups; groups = groups->next)
    for (ref = groups->refs; ref; ref = ref->next)
      if (ref->issue_prefetch_p)
	FUNC0 (ref, unroll_factor, ahead);
}