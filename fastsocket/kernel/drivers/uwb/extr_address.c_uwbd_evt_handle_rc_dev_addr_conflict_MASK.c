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
struct uwb_rc {int dummy; } ;
struct uwb_event {struct uwb_rc* rc; } ;

/* Variables and functions */
 int FUNC0 (struct uwb_rc*) ; 

int FUNC1(struct uwb_event *evt)
{
	struct uwb_rc *rc = evt->rc;

	return FUNC0(rc);
}