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
struct us_data {int /*<<< orphan*/  recv_ctrl_pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBAT_CMD_UIO ; 
 int /*<<< orphan*/  USBAT_UIO_READ ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned short) ; 
 int FUNC1 (struct us_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct us_data *us, unsigned char *data_flags)
{
	int result;

	result = FUNC1(us,
		us->recv_ctrl_pipe,
		USBAT_CMD_UIO,
		0xC0,
		0,
		0,
		data_flags,
		USBAT_UIO_READ);

	FUNC0("usbat_read_user_io: UIO register reads %02X\n", (unsigned short) (*data_flags));

	return result;
}