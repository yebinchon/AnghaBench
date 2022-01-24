#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int io; } ;
typedef  TYPE_1__ multisound_dev_t ;

/* Variables and functions */
 int EIO ; 
 int HPISR_TXDE ; 
 scalar_t__ HP_ISR ; 
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static int FUNC1(multisound_dev_t *dev)
{
	register unsigned int io = dev->io;
	register int timeout = 1000;
    
	while(timeout-- > 0)
		if (FUNC0(io + HP_ISR) & HPISR_TXDE)
			return 0;

	return -EIO;
}