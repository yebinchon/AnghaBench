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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static	void
FUNC2(struct net_device*	dev, u8	*Efuse)
{
	//u8 	pg_data[8];
	//u8 	offset = 0;
	//u8 	tmpidx;
	//static	u8	index = 0;

	//
	// We must enable clock and LDO 2.5V otherwise, read all map will be fail!!!!
	//
	FUNC1(dev, TRUE);
	FUNC0(dev, 0, 128, Efuse);
	FUNC1(dev, FALSE);
}