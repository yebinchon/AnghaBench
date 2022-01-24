#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_2__ {int loadaddr; scalar_t__ stamped; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 

__attribute__((used)) static inline unsigned int
FUNC1(struct inode *inode)
{
	unsigned int type;

	if (FUNC0(inode)->stamped)
		type = (FUNC0(inode)->loadaddr >> 8) & 0xfff;
	else
		type = (unsigned int) -1;

	return type;
}