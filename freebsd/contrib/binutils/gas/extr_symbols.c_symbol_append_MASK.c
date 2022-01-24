#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* sy_previous; struct TYPE_7__* sy_next; } ;
typedef  TYPE_1__ symbolS ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  symbol_lastP ; 
 int /*<<< orphan*/  symbol_rootP ; 

void
FUNC4 (symbolS *addme, symbolS *target,
	       symbolS **rootPP, symbolS **lastPP)
{
  if (FUNC0 (addme))
    FUNC1 ();
  if (target != NULL && FUNC0 (target))
    FUNC1 ();

  if (target == NULL)
    {
      FUNC3 (*rootPP == NULL);
      FUNC3 (*lastPP == NULL);
      addme->sy_next = NULL;
      addme->sy_previous = NULL;
      *rootPP = addme;
      *lastPP = addme;
      return;
    }				/* if the list is empty  */

  if (target->sy_next != NULL)
    {
      target->sy_next->sy_previous = addme;
    }
  else
    {
      FUNC3 (*lastPP == target);
      *lastPP = addme;
    }				/* if we have a next  */

  addme->sy_next = target->sy_next;
  target->sy_next = addme;
  addme->sy_previous = target;

  FUNC2 (symbol_rootP, symbol_lastP);
}