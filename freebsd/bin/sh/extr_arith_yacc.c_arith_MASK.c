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
struct stackmark {int dummy; } ;
typedef  int /*<<< orphan*/  arith_t ;

/* Variables and functions */
 char const* arith_buf ; 
 char const* arith_startbuf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ last_token ; 
 int /*<<< orphan*/  FUNC1 (struct stackmark*) ; 
 int /*<<< orphan*/  FUNC2 (struct stackmark*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

arith_t FUNC5(const char *s)
{
	struct stackmark smark;
	arith_t result;

	FUNC2(&smark);

	arith_buf = arith_startbuf = s;

	result = FUNC0(FUNC4(), 0);

	if (last_token)
		FUNC3("expecting EOF");

	FUNC1(&smark);

	return result;
}