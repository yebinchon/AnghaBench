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
struct net_device {int dummy; } ;

/* Variables and functions */
 int EPROM_CK_SHIFT ; 
 int /*<<< orphan*/  EPROM_CMD ; 
 int EPROM_CMD_OPERATING_MODE_MASK ; 
 int EPROM_CMD_OPERATING_MODE_SHIFT ; 
 int EPROM_CS_SHIFT ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct net_device *dev,int mode)
{
	u8 ecmd;

	ecmd=FUNC0(dev, EPROM_CMD);
	ecmd=ecmd &~ EPROM_CMD_OPERATING_MODE_MASK;
	ecmd=ecmd | (mode<<EPROM_CMD_OPERATING_MODE_SHIFT);
	ecmd=ecmd &~ (1<<EPROM_CS_SHIFT);
	ecmd=ecmd &~ (1<<EPROM_CK_SHIFT);
	FUNC1(dev, EPROM_CMD, ecmd);
}