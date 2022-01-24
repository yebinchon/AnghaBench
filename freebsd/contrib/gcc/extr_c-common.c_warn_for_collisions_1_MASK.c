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
typedef  scalar_t__ tree ;
struct tlist {scalar_t__ expr; scalar_t__ writer; struct tlist* next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 struct tlist* FUNC1 (struct tlist*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct tlist* warned_ids ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC3 (tree written, tree writer, struct tlist *list,
		       int only_writes)
{
  struct tlist *tmp;

  /* Avoid duplicate warnings.  */
  for (tmp = warned_ids; tmp; tmp = tmp->next)
    if (tmp->expr == written)
      return;

  while (list)
    {
      if (list->expr == written
	  && list->writer != writer
	  && (!only_writes || list->writer)
	  && FUNC0 (list->expr))
	{
	  warned_ids = FUNC1 (warned_ids, written, NULL_TREE);
	  FUNC2 (0, "operation on %qE may be undefined", list->expr);
	}
      list = list->next;
    }
}