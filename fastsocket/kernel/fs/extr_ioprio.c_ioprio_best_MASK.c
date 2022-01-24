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
 unsigned short IOPRIO_CLASS_BE ; 
 unsigned short IOPRIO_CLASS_NONE ; 
 unsigned short FUNC0 (unsigned short) ; 
 int FUNC1 (unsigned short,unsigned short) ; 

int FUNC2(unsigned short aprio, unsigned short bprio)
{
	unsigned short aclass = FUNC0(aprio);
	unsigned short bclass = FUNC0(bprio);

	if (aclass == IOPRIO_CLASS_NONE)
		aclass = IOPRIO_CLASS_BE;
	if (bclass == IOPRIO_CLASS_NONE)
		bclass = IOPRIO_CLASS_BE;

	if (aclass == bclass)
		return FUNC1(aprio, bprio);
	if (aclass > bclass)
		return bprio;
	else
		return aprio;
}