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
struct pending {int nsyms; struct pending* next; int /*<<< orphan*/ * symbol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pending**) ; 
 struct pending* free_pendings ; 

void
FUNC1 (struct pending **srclist, struct pending **targetlist)
{
  int i;

  if (!srclist || !*srclist)
    return;

  /* Merge in elements from current link.  */
  for (i = 0; i < (*srclist)->nsyms; i++)
    FUNC0 ((*srclist)->symbol[i], targetlist);

  /* Recurse on next.  */
  FUNC1 (&(*srclist)->next, targetlist);

  /* "Free" the current link.  */
  (*srclist)->next = free_pendings;
  free_pendings = (*srclist);
}