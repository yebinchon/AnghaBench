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
 unsigned char ALAUDA_GET_SM_MEDIA_SIG ; 
 unsigned char ALAUDA_GET_XD_MEDIA_SIG ; 
 scalar_t__ ALAUDA_PORT_XD ; 
 scalar_t__ FUNC0 (struct us_data*) ; 
 int FUNC1 (struct us_data*,int /*<<< orphan*/ ,unsigned char,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static int FUNC2(struct us_data *us, unsigned char *data)
{
	unsigned char command;

	if (FUNC0(us) == ALAUDA_PORT_XD)
		command = ALAUDA_GET_XD_MEDIA_SIG;
	else
		command = ALAUDA_GET_SM_MEDIA_SIG;

	return FUNC1(us, us->recv_ctrl_pipe,
		command, 0xc0, 0, 0, data, 4);
}