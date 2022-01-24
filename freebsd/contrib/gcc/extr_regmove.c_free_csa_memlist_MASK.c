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
struct csa_memlist {struct csa_memlist* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csa_memlist*) ; 

__attribute__((used)) static void
FUNC1 (struct csa_memlist *memlist)
{
  struct csa_memlist *next;
  for (; memlist ; memlist = next)
    {
      next = memlist->next;
      FUNC0 (memlist);
    }
}