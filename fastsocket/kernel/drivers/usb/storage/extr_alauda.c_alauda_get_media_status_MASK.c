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
 unsigned char ALAUDA_GET_SM_MEDIA_STATUS ; 
 unsigned char ALAUDA_GET_XD_MEDIA_STATUS ; 
 scalar_t__ ALAUDA_PORT_XD ; 
 scalar_t__ FUNC0 (struct us_data*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char,unsigned char) ; 
 int FUNC2 (struct us_data*,int /*<<< orphan*/ ,unsigned char,int,int /*<<< orphan*/ ,int,unsigned char*,int) ; 

__attribute__((used)) static int FUNC3(struct us_data *us, unsigned char *data)
{
	int rc;
	unsigned char command;

	if (FUNC0(us) == ALAUDA_PORT_XD)
		command = ALAUDA_GET_XD_MEDIA_STATUS;
	else
		command = ALAUDA_GET_SM_MEDIA_STATUS;

	rc = FUNC2(us, us->recv_ctrl_pipe,
		command, 0xc0, 0, 1, data, 2);

	FUNC1("alauda_get_media_status: Media status %02X %02X\n",
		data[0], data[1]);

	return rc;
}