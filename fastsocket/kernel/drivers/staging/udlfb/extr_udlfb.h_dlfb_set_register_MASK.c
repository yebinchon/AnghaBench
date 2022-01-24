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
typedef  void* uint8_t ;

/* Variables and functions */

__attribute__((used)) static char *FUNC0(char *bufptr, uint8_t reg, uint8_t val)
{
	*bufptr++ = 0xAF;
	*bufptr++ = 0x20;
	*bufptr++ = reg;
	*bufptr++ = val;

	return bufptr;
}