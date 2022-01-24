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
struct readyevents_arg {int /*<<< orphan*/  locked; int /*<<< orphan*/  ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  ep_read_events_proc ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void *priv, void *cookie, int call_nests)
{
	struct readyevents_arg *arg = priv;

	return FUNC0(arg->ep, ep_read_events_proc, NULL,
				  arg->locked);
}