#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_3__ {int /*<<< orphan*/  statbar_ctx_id; int /*<<< orphan*/  statbar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* pgctx ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (char*,char) ; 
 scalar_t__ FUNC7 (char**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(const char *format, va_list args)
{
	char *msg, *p;

	if (!FUNC5(pgctx) ||
	    FUNC7(&msg, format, args) < 0) {
		FUNC1(stderr, "Warning:\n");
		FUNC8(stderr, format, args);
		FUNC1(stderr, "\n");
		return -1;
	}

	FUNC3(FUNC0(pgctx->statbar),
			  pgctx->statbar_ctx_id);

	/* Only first line can be displayed */
	p = FUNC6(msg, '\n');
	if (p)
		*p = '\0';

	FUNC4(FUNC0(pgctx->statbar),
			   pgctx->statbar_ctx_id, msg);

	FUNC2(msg);
	return 0;
}