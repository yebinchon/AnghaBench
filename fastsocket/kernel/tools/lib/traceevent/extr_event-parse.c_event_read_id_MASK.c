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

/* Variables and functions */
 int /*<<< orphan*/  EVENT_ITEM ; 
 int /*<<< orphan*/  EVENT_OP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void)
{
	char *token;
	int id;

	if (FUNC3(EVENT_ITEM, "ID") < 0)
		return -1;

	if (FUNC2(EVENT_OP, ":") < 0)
		return -1;

	if (FUNC1(EVENT_ITEM, &token) < 0)
		goto fail;

	id = FUNC4(token, NULL, 0);
	FUNC0(token);
	return id;

 fail:
	FUNC0(token);
	return -1;
}