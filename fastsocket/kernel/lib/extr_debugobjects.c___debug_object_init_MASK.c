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
struct debug_obj_descr {int /*<<< orphan*/  fixup_init; } ;
struct debug_obj {int state; } ;
struct debug_bucket {int /*<<< orphan*/  lock; } ;
typedef  enum debug_obj_state { ____Placeholder_debug_obj_state } debug_obj_state ;

/* Variables and functions */
#define  ODEBUG_STATE_ACTIVE 132 
#define  ODEBUG_STATE_DESTROYED 131 
#define  ODEBUG_STATE_INACTIVE 130 
#define  ODEBUG_STATE_INIT 129 
#define  ODEBUG_STATE_NONE 128 
 struct debug_obj* FUNC0 (void*,struct debug_bucket*,struct debug_obj_descr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 scalar_t__ debug_objects_enabled ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct debug_obj*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct debug_bucket* FUNC6 (unsigned long) ; 
 struct debug_obj* FUNC7 (void*,struct debug_bucket*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC10(void *addr, struct debug_obj_descr *descr, int onstack)
{
	enum debug_obj_state state;
	struct debug_bucket *db;
	struct debug_obj *obj;
	unsigned long flags;

	FUNC5();

	db = FUNC6((unsigned long) addr);

	FUNC8(&db->lock, flags);

	obj = FUNC7(addr, db);
	if (!obj) {
		obj = FUNC0(addr, db, descr);
		if (!obj) {
			debug_objects_enabled = 0;
			FUNC9(&db->lock, flags);
			FUNC3();
			return;
		}
		FUNC2(addr, onstack);
	}

	switch (obj->state) {
	case ODEBUG_STATE_NONE:
	case ODEBUG_STATE_INIT:
	case ODEBUG_STATE_INACTIVE:
		obj->state = ODEBUG_STATE_INIT;
		break;

	case ODEBUG_STATE_ACTIVE:
		FUNC4(obj, "init");
		state = obj->state;
		FUNC9(&db->lock, flags);
		FUNC1(descr->fixup_init, addr, state);
		return;

	case ODEBUG_STATE_DESTROYED:
		FUNC4(obj, "init");
		break;
	default:
		break;
	}

	FUNC9(&db->lock, flags);
}