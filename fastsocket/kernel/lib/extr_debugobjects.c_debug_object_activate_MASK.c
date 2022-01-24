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
struct debug_obj_descr {int /*<<< orphan*/  fixup_activate; } ;
struct debug_obj {int state; } ;
struct debug_bucket {int /*<<< orphan*/  lock; } ;
typedef  enum debug_obj_state { ____Placeholder_debug_obj_state } debug_obj_state ;

/* Variables and functions */
#define  ODEBUG_STATE_ACTIVE 131 
#define  ODEBUG_STATE_DESTROYED 130 
#define  ODEBUG_STATE_INACTIVE 129 
#define  ODEBUG_STATE_INIT 128 
 int ODEBUG_STATE_NOTAVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  debug_objects_enabled ; 
 int /*<<< orphan*/  FUNC1 (struct debug_obj*,char*) ; 
 struct debug_bucket* FUNC2 (unsigned long) ; 
 struct debug_obj* FUNC3 (void*,struct debug_bucket*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(void *addr, struct debug_obj_descr *descr)
{
	enum debug_obj_state state;
	struct debug_bucket *db;
	struct debug_obj *obj;
	unsigned long flags;

	if (!debug_objects_enabled)
		return;

	db = FUNC2((unsigned long) addr);

	FUNC4(&db->lock, flags);

	obj = FUNC3(addr, db);
	if (obj) {
		switch (obj->state) {
		case ODEBUG_STATE_INIT:
		case ODEBUG_STATE_INACTIVE:
			obj->state = ODEBUG_STATE_ACTIVE;
			break;

		case ODEBUG_STATE_ACTIVE:
			FUNC1(obj, "activate");
			state = obj->state;
			FUNC5(&db->lock, flags);
			FUNC0(descr->fixup_activate, addr, state);
			return;

		case ODEBUG_STATE_DESTROYED:
			FUNC1(obj, "activate");
			break;
		default:
			break;
		}
		FUNC5(&db->lock, flags);
		return;
	}

	FUNC5(&db->lock, flags);
	/*
	 * This happens when a static object is activated. We
	 * let the type specific code decide whether this is
	 * true or not.
	 */
	FUNC0(descr->fixup_activate, addr,
			   ODEBUG_STATE_NOTAVAILABLE);
}