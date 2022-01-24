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
struct media {int dummy; } ;
struct bearer {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MAX_BEARERS ; 
 int /*<<< orphan*/  MAX_MEDIA ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * media_list ; 
 int /*<<< orphan*/ * tipc_bearers ; 
 int /*<<< orphan*/  tipc_net_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(void)
{
	int res;

	FUNC2(&tipc_net_lock);
	tipc_bearers = FUNC0(MAX_BEARERS, sizeof(struct bearer), GFP_ATOMIC);
	media_list = FUNC0(MAX_MEDIA, sizeof(struct media), GFP_ATOMIC);
	if (tipc_bearers && media_list) {
		res = 0;
	} else {
		FUNC1(tipc_bearers);
		FUNC1(media_list);
		tipc_bearers = NULL;
		media_list = NULL;
		res = -ENOMEM;
	}
	FUNC3(&tipc_net_lock);
	return res;
}