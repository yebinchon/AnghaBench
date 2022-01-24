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
typedef  int pool_state_t ;

/* Variables and functions */
#define  POOL_STATE_ACTIVE 135 
#define  POOL_STATE_DESTROYED 134 
#define  POOL_STATE_EXPORTED 133 
#define  POOL_STATE_L2CACHE 132 
#define  POOL_STATE_POTENTIALLY_ACTIVE 131 
#define  POOL_STATE_SPARE 130 
#define  POOL_STATE_UNAVAIL 129 
#define  POOL_STATE_UNINITIALIZED 128 
 char const* FUNC0 (char*) ; 

const char *
FUNC1(pool_state_t state)
{
	switch (state) {
	case POOL_STATE_ACTIVE:
		return (FUNC0("ACTIVE"));
	case POOL_STATE_EXPORTED:
		return (FUNC0("EXPORTED"));
	case POOL_STATE_DESTROYED:
		return (FUNC0("DESTROYED"));
	case POOL_STATE_SPARE:
		return (FUNC0("SPARE"));
	case POOL_STATE_L2CACHE:
		return (FUNC0("L2CACHE"));
	case POOL_STATE_UNINITIALIZED:
		return (FUNC0("UNINITIALIZED"));
	case POOL_STATE_UNAVAIL:
		return (FUNC0("UNAVAIL"));
	case POOL_STATE_POTENTIALLY_ACTIVE:
		return (FUNC0("POTENTIALLY_ACTIVE"));
	}

	return (FUNC0("UNKNOWN"));
}