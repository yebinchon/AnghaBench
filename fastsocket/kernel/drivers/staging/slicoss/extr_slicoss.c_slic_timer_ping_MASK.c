#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  struct sliccard* ulong ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct sliccard {TYPE_1__ pingtimer; struct sliccard* card; } ;
struct net_device {int dummy; } ;
struct adapter {TYPE_1__ pingtimer; struct adapter* card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sliccard*) ; 
 int HZ ; 
 int PING_TIMER_INTERVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 struct sliccard* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(ulong dev)
{
	struct adapter *adapter;
	struct sliccard *card;

	FUNC0(dev);
	adapter = FUNC2((struct net_device *)dev);
	FUNC0(adapter);
	card = adapter->card;
	FUNC0(card);

	adapter->pingtimer.expires = jiffies + (PING_TIMER_INTERVAL * HZ);
	FUNC1(&adapter->pingtimer);
}