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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  def_msgs ; 
 int /*<<< orphan*/  def_msgsize ; 
 scalar_t__ default_settings ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max_msgs ; 
 int /*<<< orphan*/  max_msgsize ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int queue ; 
 scalar_t__ queue_path ; 
 scalar_t__ saved_def_msgs ; 
 scalar_t__ saved_def_msgsize ; 
 scalar_t__ saved_max_msgs ; 
 scalar_t__ saved_max_msgsize ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(int exit_val, char *err_cause, int line_no)
{
	static int in_shutdown = 0;

	/* In case we get called recursively by a set() call below */
	if (in_shutdown++)
		return;

	FUNC6(0);

	if (queue != -1)
		if (FUNC3(queue))
			FUNC5("mq_close() during shutdown");
	if (queue_path)
		/*
		 * Be silent if this fails, if we cleaned up already it's
		 * expected to fail
		 */
		FUNC4(queue_path);
	if (default_settings) {
		if (saved_def_msgs)
			FUNC0(def_msgs, saved_def_msgs,
			      "failed to restore saved_def_msgs");
		if (saved_def_msgsize)
			FUNC0(def_msgsize, saved_def_msgsize,
			      "failed to restore saved_def_msgsize");
	}
	if (saved_max_msgs)
		FUNC0(max_msgs, saved_max_msgs,
		      "failed to restore saved_max_msgs");
	if (saved_max_msgsize)
		FUNC0(max_msgsize, saved_max_msgsize,
		      "failed to restore saved_max_msgsize");
	if (exit_val)
		FUNC1(exit_val, errno, "%s at %d", err_cause, line_no);
	FUNC2(0);
}