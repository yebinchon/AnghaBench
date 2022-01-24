#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct uwb_rc {int /*<<< orphan*/ * rsv_workq; TYPE_1__ uwb_dev; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 

int FUNC3(struct uwb_rc *rc)
{
	char name[16];

	FUNC2(name, sizeof(name), "%s_rsvd", FUNC1(&rc->uwb_dev.dev));
	rc->rsv_workq = FUNC0(name);
	if (rc->rsv_workq == NULL)
		return -ENOMEM;

	return 0;
}