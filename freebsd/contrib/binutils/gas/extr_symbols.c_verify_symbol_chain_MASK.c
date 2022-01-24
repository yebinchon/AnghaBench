#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* sy_next; int /*<<< orphan*/ * bsym; } ;
typedef  TYPE_2__ symbolS ;
struct TYPE_7__ {TYPE_2__* sy_previous; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 

void
FUNC2 (symbolS *rootP, symbolS *lastP)
{
  symbolS *symbolP = rootP;

  if (symbolP == NULL)
    return;

  for (; FUNC1 (symbolP) != NULL; symbolP = FUNC1 (symbolP))
    {
      FUNC0 (symbolP->bsym != NULL);
      FUNC0 (symbolP->sy_next->sy_previous == symbolP);
    }

  FUNC0 (lastP == symbolP);
}