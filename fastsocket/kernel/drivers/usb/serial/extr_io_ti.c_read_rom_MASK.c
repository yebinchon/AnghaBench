#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ TiMode; } ;
struct edgeport_serial {int /*<<< orphan*/  TI_I2C_Type; TYPE_2__* serial; TYPE_1__ product_info; } ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ TI_MODE_DOWNLOAD ; 
 int FUNC0 (struct edgeport_serial*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct edgeport_serial *serial,
				int start_address, int length, __u8 *buffer)
{
	int status;

	if (serial->product_info.TiMode == TI_MODE_DOWNLOAD) {
		status = FUNC1(serial->serial->dev,
					       start_address,
					       length,
					       serial->TI_I2C_Type,
					       buffer);
	} else {
		status = FUNC0(serial, start_address, length,
								buffer);
	}
	return status;
}