#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_10__ {TYPE_4__* chip_info; TYPE_2__* shared; } ;
struct TYPE_8__ {scalar_t__ tmds_chip_slave_addr; int /*<<< orphan*/  i2c_port; } ;
struct TYPE_9__ {TYPE_3__ tmds_chip_info; } ;
struct TYPE_6__ {int /*<<< orphan*/  i2c_port; } ;
struct TYPE_7__ {TYPE_1__ i2c_stuff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 TYPE_5__* viaparinfo ; 

__attribute__((used)) static int FUNC1(int index, u8 *buff, int buff_len)
{
	viaparinfo->shared->i2c_stuff.i2c_port =
		viaparinfo->chip_info->tmds_chip_info.i2c_port;
	FUNC0((u8) viaparinfo->chip_info->tmds_chip_info.
			 tmds_chip_slave_addr, (u8) index, buff, buff_len);
	return 0;
}