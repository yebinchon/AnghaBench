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
struct smd_channel {int current_packet; } ;

/* Variables and functions */
 int FUNC0 (struct smd_channel*) ; 

__attribute__((used)) static int FUNC1(struct smd_channel *ch)
{
	if (ch->current_packet) {
		int n = FUNC0(ch);
		if (n > ch->current_packet)
			n = ch->current_packet;
		return n;
	} else {
		return 0;
	}
}