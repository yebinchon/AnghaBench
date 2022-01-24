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
typedef  int u16 ;
struct go7007 {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct go7007*,int*,int*) ; 
 scalar_t__ FUNC1 (struct go7007*,int,int) ; 

int FUNC2(struct go7007 *go, u16 addr, u16 *data)
{
	int count = 100;
	u16 value;

	if (FUNC1(go, 0x0010, addr) < 0)
		return -EIO;
	while (count-- > 0) {
		if (FUNC0(go, &value, data) == 0 &&
				value == 0xa000)
			return 0;
	}
	return -EIO;
}