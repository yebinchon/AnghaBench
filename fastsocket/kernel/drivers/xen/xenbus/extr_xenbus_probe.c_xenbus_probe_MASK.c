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
struct work_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fe_watch ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  xenbus_frontend ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xenstore_chain ; 
 scalar_t__ xenstored_ready ; 

void FUNC5(struct work_struct *unused)
{
	FUNC0((xenstored_ready <= 0));

	/* Enumerate devices in xenstore and watch for changes. */
	FUNC4(&xenbus_frontend);
	FUNC2(&fe_watch);
	FUNC3();

	/* Notify others that xenstore is up */
	FUNC1(&xenstore_chain, 0, NULL);
}