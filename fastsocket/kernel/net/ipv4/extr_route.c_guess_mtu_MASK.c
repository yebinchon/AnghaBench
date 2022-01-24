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

/* Variables and functions */
 int FUNC0 (unsigned short*) ; 
 unsigned short* mtu_plateau ; 

__attribute__((used)) static inline unsigned short FUNC1(unsigned short old_mtu)
{
	int i;

	for (i = 0; i < FUNC0(mtu_plateau); i++)
		if (old_mtu > mtu_plateau[i])
			return mtu_plateau[i];
	return 68;
}