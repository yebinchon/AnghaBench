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
struct w1_master {TYPE_1__* bus_master; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  (* write_bit ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct w1_master *dev, int bit)
{
	if (bit) {
		dev->bus_master->write_bit(dev->bus_master->data, 0);
		FUNC4(6);
		dev->bus_master->write_bit(dev->bus_master->data, 1);
		FUNC4(64);
	} else {
		dev->bus_master->write_bit(dev->bus_master->data, 0);
		FUNC4(60);
		dev->bus_master->write_bit(dev->bus_master->data, 1);
		FUNC4(10);
	}
}