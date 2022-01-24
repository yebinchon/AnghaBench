#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int current_packet; } ;
typedef  TYPE_1__ smd_channel_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (TYPE_1__*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  smd_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(smd_channel_t *ch, void *data, int len)
{
	unsigned long flags;
	int r;

	if (len < 0)
		return -EINVAL;

	if (len > ch->current_packet)
		len = ch->current_packet;

	r = FUNC0(ch, data, len);
	if (r > 0)
		FUNC1();

	FUNC2(&smd_lock, flags);
	ch->current_packet -= r;
	FUNC4(ch);
	FUNC3(&smd_lock, flags);

	return r;
}