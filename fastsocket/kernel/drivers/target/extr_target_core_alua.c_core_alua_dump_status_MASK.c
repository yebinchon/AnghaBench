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
#define  ALUA_STATUS_ALTERED_BY_EXPLICT_STPG 130 
#define  ALUA_STATUS_ALTERED_BY_IMPLICT_ALUA 129 
#define  ALUA_STATUS_NONE 128 

char *FUNC0(int status)
{
	switch (status) {
	case ALUA_STATUS_NONE:
		return "None";
	case ALUA_STATUS_ALTERED_BY_EXPLICT_STPG:
		return "Altered by Explict STPG";
	case ALUA_STATUS_ALTERED_BY_IMPLICT_ALUA:
		return "Altered by Implict ALUA";
	default:
		return "Unknown";
	}

	return NULL;
}