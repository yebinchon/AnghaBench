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
struct TYPE_2__ {int /*<<< orphan*/  text; struct nodelist* backquote; } ;
union node {TYPE_1__ narg; } ;
struct worddest {scalar_t__ state; struct arglist* list; } ;
struct nodelist {int dummy; } ;
struct arglist {int dummy; } ;

/* Variables and functions */
 int EXP_GLOB ; 
 int EXP_SPLIT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char,scalar_t__) ; 
 scalar_t__ WORD_IDLE ; 
 scalar_t__ WORD_QUOTEMARK ; 
 int /*<<< orphan*/  FUNC3 (struct arglist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nodelist**,int,struct worddest*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct arglist*) ; 
 scalar_t__ expdest ; 
 scalar_t__ fflag ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 () ; 

void
FUNC8(union node *arg, struct arglist *arglist, int flag)
{
	struct worddest exparg;
	struct nodelist *argbackq;

	if (fflag)
		flag &= ~EXP_GLOB;
	argbackq = arg->narg.backquote;
	exparg.list = arglist;
	exparg.state = WORD_IDLE;
	FUNC1(expdest);
	FUNC4(arg->narg.text, &argbackq, flag, &exparg);
	if (arglist == NULL) {
		FUNC0(expdest);
		return;			/* here document expanded */
	}
	if ((flag & EXP_SPLIT) == 0 || expdest != FUNC7() ||
	    exparg.state == WORD_QUOTEMARK) {
		FUNC2('\0', expdest);
		if (flag & EXP_SPLIT) {
			if (flag & EXP_GLOB)
				FUNC5(FUNC6(expdest), exparg.list);
			else
				FUNC3(exparg.list, FUNC6(expdest));
		}
	}
	if ((flag & EXP_SPLIT) == 0)
		FUNC3(arglist, FUNC6(expdest));
}