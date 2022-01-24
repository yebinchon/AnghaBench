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
 int EPROM_R_SHIFT ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

short FUNC2(struct net_device *dev)
{
	short bit;

	bit=(FUNC0(dev, EPROM_CMD) & (1<<EPROM_R_SHIFT) );
	FUNC1(EPROM_DELAY);

	if(bit) return 1;
	return 0;
}