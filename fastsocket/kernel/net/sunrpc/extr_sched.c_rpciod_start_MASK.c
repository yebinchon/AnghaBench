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
struct workqueue_struct {int dummy; } ;

/* Variables and functions */
 struct workqueue_struct* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct workqueue_struct* rpciod_workqueue ; 

__attribute__((used)) static int FUNC2(void)
{
	struct workqueue_struct *wq;

	/*
	 * Create the rpciod thread and wait for it to start.
	 */
	FUNC1("RPC:       creating workqueue rpciod\n");
	wq = FUNC0("rpciod");
	rpciod_workqueue = wq;
	return rpciod_workqueue != NULL;
}