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
typedef  int /*<<< orphan*/  w1_slave_found_callback ;
typedef  int /*<<< orphan*/  u8 ;
struct w1_master {TYPE_1__* bus_master; int /*<<< orphan*/  attempts; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  (* search ) (int /*<<< orphan*/ ,struct w1_master*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct w1_master*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct w1_master*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct w1_master *dev, u8 search_type, w1_slave_found_callback cb)
{
	dev->attempts++;
	if (dev->bus_master->search)
		dev->bus_master->search(dev->bus_master->data, dev,
			search_type, cb);
	else
		FUNC1(dev, search_type, cb);
}