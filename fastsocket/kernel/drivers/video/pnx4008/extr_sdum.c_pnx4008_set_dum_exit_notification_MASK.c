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
struct TYPE_2__ {int* fb_owning_channel; } ;

/* Variables and functions */
 int ERESOURCESNOTFREED ; 
 int MAX_DUM_CHANNELS ; 
 TYPE_1__ dum_data ; 

int FUNC0(int dev_id)
{
	int i;

	for (i = 0; i < MAX_DUM_CHANNELS; i++)
		if (dum_data.fb_owning_channel[i] == dev_id)
			return -ERESOURCESNOTFREED;

	return 0;
}