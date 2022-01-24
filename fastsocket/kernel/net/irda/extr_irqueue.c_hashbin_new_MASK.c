#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int hb_type; int /*<<< orphan*/  hb_spinlock; int /*<<< orphan*/  magic; } ;
typedef  TYPE_1__ hashbin_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HB_LOCK ; 
 int /*<<< orphan*/  HB_MAGIC ; 
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

hashbin_t *FUNC2(int type)
{
	hashbin_t* hashbin;

	/*
	 * Allocate new hashbin
	 */
	hashbin = FUNC0(sizeof(*hashbin), GFP_ATOMIC);
	if (!hashbin)
		return NULL;

	/*
	 * Initialize structure
	 */
	hashbin->hb_type = type;
	hashbin->magic = HB_MAGIC;
	//hashbin->hb_current = NULL;

	/* Make sure all spinlock's are unlocked */
	if ( hashbin->hb_type & HB_LOCK ) {
		FUNC1(&hashbin->hb_spinlock);
	}

	return hashbin;
}