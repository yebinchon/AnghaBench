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
struct p9_wstat {int dummy; } ;
struct p9_fcall {int size; int capacity; char* sdata; scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct p9_fcall*) ; 
 int FUNC2 (struct p9_fcall*,int,char*,struct p9_wstat*) ; 

int FUNC3(char *buf, int len, struct p9_wstat *st, int dotu)
{
	struct p9_fcall fake_pdu;
	int ret;

	fake_pdu.size = len;
	fake_pdu.capacity = len;
	fake_pdu.sdata = buf;
	fake_pdu.offset = 0;

	ret = FUNC2(&fake_pdu, dotu, "S", st);
	if (ret) {
		FUNC0(P9_DEBUG_9P, "<<< p9stat_read failed: %d\n", ret);
		FUNC1(1, &fake_pdu);
	}

	return ret;
}