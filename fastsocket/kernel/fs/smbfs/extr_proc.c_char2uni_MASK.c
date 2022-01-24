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
typedef  unsigned char wchar_t ;

/* Variables and functions */
 int EINVAL ; 

__attribute__((used)) static int FUNC0(const unsigned char *rawstring, int boundlen, wchar_t *uni)
{
	if (boundlen < 2)
		return -EINVAL;
	*uni = (rawstring[1] << 8) | rawstring[0];
	return 2;
}