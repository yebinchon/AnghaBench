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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int FUNC0 (void*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 

int
FUNC1(void *cd, const char *name,
			  int namlen, loff_t offset, u64 ino,
			  unsigned int d_type)
{
	return FUNC0(cd, name, namlen, offset, ino, d_type, 1);
}