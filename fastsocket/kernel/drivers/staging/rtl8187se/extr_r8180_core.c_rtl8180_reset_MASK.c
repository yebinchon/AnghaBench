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
 int /*<<< orphan*/  CMD ; 
 int CMD_RST_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  EPROM_CMD_LOAD ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC8(struct net_device *dev)
{
	u8 cr;

	FUNC5(dev);

	cr=FUNC4(dev,CMD);
	cr = cr & 2;
	cr = cr | (1<<CMD_RST_SHIFT);
	FUNC7(dev,CMD,cr);

	FUNC2(dev);

	FUNC3(200);

	if(FUNC4(dev,CMD) & (1<<CMD_RST_SHIFT))
		FUNC1("Card reset timeout!");
	else
		FUNC0("Card successfully reset");

	FUNC6(dev,EPROM_CMD_LOAD);
	FUNC2(dev);
	FUNC3(200);
}