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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANAPARAM2 ; 
 int /*<<< orphan*/  CONFIG3 ; 
 int CONFIG3_ANAPARAM_W_SHIFT ; 
 int /*<<< orphan*/  EPROM_CMD_CONFIG ; 
 int /*<<< orphan*/  EPROM_CMD_NORMAL ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct net_device *dev, u32 a)
{
	u8 conf3;

	FUNC1(dev, EPROM_CMD_CONFIG);

	conf3 = FUNC0(dev, CONFIG3);
	FUNC2(dev, CONFIG3, conf3 | (1<<CONFIG3_ANAPARAM_W_SHIFT));
	FUNC3(dev, ANAPARAM2, a);

	conf3 = FUNC0(dev, CONFIG3);
	FUNC2(dev, CONFIG3, conf3 &~(1<<CONFIG3_ANAPARAM_W_SHIFT));
	FUNC1(dev, EPROM_CMD_NORMAL);
}