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
struct stack_block {struct stack_block* prev; } ;
typedef  int /*<<< orphan*/  pointer ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int INT_MAX ; 
 char* FUNC1 (struct stack_block*) ; 
 struct stack_block* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char* sstrend ; 
 int stacknleft ; 
 char* stacknxt ; 
 struct stack_block* stackp ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(int min)
{
	char *p;
	int newlen;
	char *oldspace;
	int oldlen;
	struct stack_block *sp;
	struct stack_block *oldstackp;

	if (min < stacknleft)
		min = stacknleft;
	if ((unsigned int)min >=
	    INT_MAX / 2 - FUNC0(sizeof(struct stack_block)))
		FUNC3("Out of space");
	min += stacknleft;
	min += FUNC0(sizeof(struct stack_block));
	newlen = 512;
	while (newlen < min)
		newlen <<= 1;
	oldspace = stacknxt;
	oldlen = stacknleft;

	if (stackp != NULL && stacknxt == FUNC1(stackp)) {
		INTOFF;
		oldstackp = stackp;
		stackp = oldstackp->prev;
		sp = FUNC2((pointer)oldstackp, newlen);
		sp->prev = stackp;
		stackp = sp;
		stacknxt = FUNC1(sp);
		stacknleft = newlen - (stacknxt - (char*)sp);
		sstrend = stacknxt + stacknleft;
		INTON;
	} else {
		newlen -= FUNC0(sizeof(struct stack_block));
		p = FUNC5(newlen);
		if (oldlen != 0)
			FUNC4(p, oldspace, oldlen);
		FUNC6(p);
	}
}