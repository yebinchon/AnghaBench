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
struct stackmark {int dummy; } ;
struct nodelist {int dummy; } ;

/* Variables and functions */
 int EXP_CASE ; 
 int EXP_TILDE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nodelist**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  expdest ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct stackmark*) ; 
 int /*<<< orphan*/  FUNC6 (struct stackmark*) ; 

int
FUNC7(union node *pattern, const char *val)
{
	struct stackmark smark;
	struct nodelist *argbackq;
	int result;
	char *p;

	FUNC6(&smark);
	argbackq = pattern->narg.backquote;
	FUNC0(expdest);
	FUNC2(pattern->narg.text, &argbackq, EXP_TILDE | EXP_CASE, NULL);
	FUNC1('\0', expdest);
	p = FUNC3(expdest);
	result = FUNC4(p, val);
	FUNC5(&smark);
	return result;
}