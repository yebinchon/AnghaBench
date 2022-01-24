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
struct debug_obj_descr {int dummy; } ;
struct debug_obj {int state; void* object; struct debug_obj_descr* descr; } ;
struct debug_bucket {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
#define  ODEBUG_STATE_ACTIVE 131 
#define  ODEBUG_STATE_DESTROYED 130 
#define  ODEBUG_STATE_INACTIVE 129 
#define  ODEBUG_STATE_INIT 128 
 int ODEBUG_STATE_NOTAVAILABLE ; 
 int /*<<< orphan*/  debug_objects_enabled ; 
 int /*<<< orphan*/  FUNC0 (struct debug_obj*,char*) ; 
 struct debug_bucket* FUNC1 (unsigned long) ; 
 struct debug_obj* FUNC2 (void*,struct debug_bucket*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(void *addr, struct debug_obj_descr *descr)
{
	struct debug_bucket *db;
	struct debug_obj *obj;
	unsigned long flags;

	if (!debug_objects_enabled)
		return;

	db = FUNC1((unsigned long) addr);

	FUNC3(&db->lock, flags);

	obj = FUNC2(addr, db);
	if (obj) {
		switch (obj->state) {
		case ODEBUG_STATE_INIT:
		case ODEBUG_STATE_INACTIVE:
		case ODEBUG_STATE_ACTIVE:
			obj->state = ODEBUG_STATE_INACTIVE;
			break;

		case ODEBUG_STATE_DESTROYED:
			FUNC0(obj, "deactivate");
			break;
		default:
			break;
		}
	} else {
		struct debug_obj o = { .object = addr,
				       .state = ODEBUG_STATE_NOTAVAILABLE,
				       .descr = descr };

		FUNC0(&o, "deactivate");
	}

	FUNC4(&db->lock, flags);
}