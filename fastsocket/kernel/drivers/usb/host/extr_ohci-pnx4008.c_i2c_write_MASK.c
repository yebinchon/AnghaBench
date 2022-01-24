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
typedef  char u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  isp1301_i2c_client ; 

__attribute__((used)) static void FUNC1(u8 buf, u8 subaddr)
{
	char tmpbuf[2];

	tmpbuf[0] = subaddr;	/*register number */
	tmpbuf[1] = buf;	/*register data */
	FUNC0(isp1301_i2c_client, &tmpbuf[0], 2);
}