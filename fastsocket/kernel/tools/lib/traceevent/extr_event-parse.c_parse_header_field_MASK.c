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
 int EVENT_ITEM ; 
 int EVENT_NEWLINE ; 
 int EVENT_OP ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned long long input_buf_ptr ; 
 unsigned long long input_buf_siz ; 
 scalar_t__ FUNC2 (int,char**) ; 
 scalar_t__ FUNC3 (int,char const*) ; 
 int FUNC4 (char**) ; 
 scalar_t__ FUNC5 (char*,char const*) ; 

__attribute__((used)) static void FUNC6(const char *field,
			       int *offset, int *size, int mandatory)
{
	unsigned long long save_input_buf_ptr;
	unsigned long long save_input_buf_siz;
	char *token;
	int type;

	save_input_buf_ptr = input_buf_ptr;
	save_input_buf_siz = input_buf_siz;

	if (FUNC3(EVENT_ITEM, "field") < 0)
		return;
	if (FUNC3(EVENT_OP, ":") < 0)
		return;

	/* type */
	if (FUNC2(EVENT_ITEM, &token) < 0)
		goto fail;
	FUNC1(token);

	/*
	 * If this is not a mandatory field, then test it first.
	 */
	if (mandatory) {
		if (FUNC3(EVENT_ITEM, field) < 0)
			return;
	} else {
		if (FUNC2(EVENT_ITEM, &token) < 0)
			goto fail;
		if (FUNC5(token, field) != 0)
			goto discard;
		FUNC1(token);
	}

	if (FUNC3(EVENT_OP, ";") < 0)
		return;
	if (FUNC3(EVENT_ITEM, "offset") < 0)
		return;
	if (FUNC3(EVENT_OP, ":") < 0)
		return;
	if (FUNC2(EVENT_ITEM, &token) < 0)
		goto fail;
	*offset = FUNC0(token);
	FUNC1(token);
	if (FUNC3(EVENT_OP, ";") < 0)
		return;
	if (FUNC3(EVENT_ITEM, "size") < 0)
		return;
	if (FUNC3(EVENT_OP, ":") < 0)
		return;
	if (FUNC2(EVENT_ITEM, &token) < 0)
		goto fail;
	*size = FUNC0(token);
	FUNC1(token);
	if (FUNC3(EVENT_OP, ";") < 0)
		return;
	type = FUNC4(&token);
	if (type != EVENT_NEWLINE) {
		/* newer versions of the kernel have a "signed" type */
		if (type != EVENT_ITEM)
			goto fail;

		if (FUNC5(token, "signed") != 0)
			goto fail;

		FUNC1(token);

		if (FUNC3(EVENT_OP, ":") < 0)
			return;

		if (FUNC2(EVENT_ITEM, &token))
			goto fail;

		FUNC1(token);
		if (FUNC3(EVENT_OP, ";") < 0)
			return;

		if (FUNC2(EVENT_NEWLINE, &token))
			goto fail;
	}
 fail:
	FUNC1(token);
	return;

 discard:
	input_buf_ptr = save_input_buf_ptr;
	input_buf_siz = save_input_buf_siz;
	*offset = 0;
	*size = 0;
	FUNC1(token);
}