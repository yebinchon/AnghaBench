#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ Suff ;
typedef  int /*<<< orphan*/ * LstNode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUFF_INCLUDE ; 
 int /*<<< orphan*/  SuffSuffHasNameP ; 
 int /*<<< orphan*/  sufflist ; 

void
FUNC2(char *sname)
{
    LstNode	  ln;
    Suff	  *s;

    ln = FUNC1(sufflist, sname, SuffSuffHasNameP);
    if (ln != NULL) {
	s = (Suff *)FUNC0(ln);
	s->flags |= SUFF_INCLUDE;
    }
}