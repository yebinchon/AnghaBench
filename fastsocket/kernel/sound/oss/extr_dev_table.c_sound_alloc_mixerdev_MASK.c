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
 int num_mixers ; 
 int /*<<< orphan*/  oss_sound_fops ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 

int FUNC1(void)
{
	int i = FUNC0(&oss_sound_fops, -1);
	if(i==-1)
		return -1;
	i>>=4;
	if(i>=num_mixers)
		num_mixers = i + 1;
	return i;
}