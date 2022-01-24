#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ class; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ bucket ;

/* Variables and functions */
 int EOF ; 
 scalar_t__ TERM ; 
 int /*<<< orphan*/  cptr ; 
 TYPE_1__* FUNC0 () ; 
 TYPE_1__* goal ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  line ; 
 int /*<<< orphan*/  lineno ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7(void)
{
    int c;
    bucket *bp;

    c = FUNC2();
    if (c == EOF)
	FUNC6();
    if (!FUNC1(c) && c != '_' && c != '.' && c != '$')
	FUNC4(lineno, line, cptr);
    bp = FUNC0();
    if (bp->class == TERM)
	FUNC5(bp->name);
    if (goal && goal != bp)
	FUNC3();
    goal = bp;
}