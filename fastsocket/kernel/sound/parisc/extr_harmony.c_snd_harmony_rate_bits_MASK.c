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
 unsigned int FUNC0 (int*) ; 
 unsigned int HARMONY_SR_44KHZ ; 
 unsigned int* rate_bits ; 
 int* snd_harmony_rates ; 

__attribute__((used)) static unsigned int 
FUNC1(int rate)
{
	unsigned int i;
	
	for (i = 0; i < FUNC0(snd_harmony_rates); i++)
		if (snd_harmony_rates[i] == rate)
			return rate_bits[i];

	return HARMONY_SR_44KHZ;
}