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
struct connection {int dummy; } ;
struct TYPE_2__ {scalar_t__ ci_protocol; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 TYPE_1__ dlm_config ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct connection*) ; 
 struct connection* FUNC2 (int,int /*<<< orphan*/ ) ; 

int FUNC3(int nodeid)
{
	struct connection *con;

	/* with sctp there's no connecting without sending */
	if (dlm_config.ci_protocol != 0)
		return 0;

	if (nodeid == FUNC0())
		return 0;

	con = FUNC2(nodeid, GFP_NOFS);
	if (!con)
		return -ENOMEM;
	FUNC1(con);
	return 0;
}