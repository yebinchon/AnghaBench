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
struct sscape_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sscape_info*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC1(struct sscape_info *devc, int cmd, int parm1)
{
	unsigned char buf[10];

	buf[0] = (unsigned char) (cmd & 0xff);
	buf[1] = (unsigned char) (parm1 & 0xff);

	return FUNC0(devc, buf, 2);
}