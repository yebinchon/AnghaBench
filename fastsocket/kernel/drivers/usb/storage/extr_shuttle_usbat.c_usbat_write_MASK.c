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
struct us_data {int /*<<< orphan*/  send_ctrl_pipe; } ;

/* Variables and functions */
 unsigned char USBAT_CMD_WRITE_REG ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,unsigned char) ; 
 int FUNC1 (struct us_data*,int /*<<< orphan*/ ,unsigned char,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct us_data *us,
		       unsigned char access,
		       unsigned char reg,
		       unsigned char content)
{
	return FUNC1(us,
		us->send_ctrl_pipe,
		access | USBAT_CMD_WRITE_REG,
		0x40,
		FUNC0(reg, content),
		0,
		NULL,
		0);
}