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
struct sscape_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ CMD_ACK ; 
 int /*<<< orphan*/  CMD_SET_MT32 ; 
 int /*<<< orphan*/  FUNC0 (struct sscape_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct sscape_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sscape_info*) ; 
 scalar_t__ FUNC3 (struct sscape_info*) ; 

__attribute__((used)) static void FUNC4(struct sscape_info *devc, int value)
{
	FUNC2(devc);
	FUNC1(devc, CMD_SET_MT32, value ? 1 : 0);
	if (FUNC3(devc) != CMD_ACK)
	{
		/* printk( "SNDSCAPE: Setting MT32 mode failed\n"); */
	}
	FUNC0(devc);
}