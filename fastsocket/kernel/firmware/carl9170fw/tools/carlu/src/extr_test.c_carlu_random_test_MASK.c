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
typedef  int uint32_t ;
struct carlu {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AR9170_RAND_REG_NUM ; 
 int FUNC0 (int*) ; 
 int FUNC1 (struct carlu*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

int FUNC3(struct carlu *ar)
{
	uint32_t buf[4096];
	int err, i;

	err = FUNC1(ar, AR9170_RAND_REG_NUM, sizeof(buf), buf);
	if (err)
		return err;

	for (i = 0; i < FUNC0(buf); i++)
		FUNC2("%.2x %.2x ", buf[i] & 0xff, buf[i] >> 8);

	FUNC2("\n");
}