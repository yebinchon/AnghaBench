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
struct pid_namespace {struct pid_namespace* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pid_namespace*) ; 
 int /*<<< orphan*/  current ; 
 struct pid_namespace* FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	struct pid_namespace *ns;

	/*
	 * This loop is safe lockless, since current is still
	 * alive and holds its namespace, which in turn holds
	 * its parent.
	 */
	for (ns = FUNC1(current); ns != NULL; ns = ns->parent)
		FUNC0(ns);
}