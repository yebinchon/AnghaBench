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
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROM_CMD ; 
 int /*<<< orphan*/  EPROM_DELAY ; 
 int EPROM_W_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev,short bit)
{
	if(bit)
		FUNC3(dev, EPROM_CMD, (1<<EPROM_W_SHIFT) | \
			       FUNC1(dev,EPROM_CMD));
	else
		FUNC3(dev, EPROM_CMD, FUNC1(dev,EPROM_CMD)\
			       &~(1<<EPROM_W_SHIFT));

	FUNC0(dev);
	FUNC2(EPROM_DELAY);
}