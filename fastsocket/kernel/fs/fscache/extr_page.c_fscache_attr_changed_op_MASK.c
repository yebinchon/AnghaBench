#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fscache_operation {int /*<<< orphan*/  debug_id; struct fscache_object* object; } ;
struct fscache_object {TYPE_2__* cache; int /*<<< orphan*/  debug_id; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* attr_changed ) (struct fscache_object*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct fscache_object*) ; 
 int /*<<< orphan*/  fscache_n_attr_changed_calls ; 
 int /*<<< orphan*/  fscache_n_cop_attr_changed ; 
 scalar_t__ FUNC3 (struct fscache_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct fscache_operation*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fscache_operation*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct fscache_object*) ; 
 scalar_t__ FUNC9 (struct fscache_object*) ; 
 int FUNC10 (struct fscache_object*) ; 

__attribute__((used)) static void FUNC11(struct fscache_operation *op)
{
	struct fscache_object *object = op->object;
	int ret;

	FUNC0("{OBJ%x OP%x}", object->debug_id, op->debug_id);

	FUNC6(&fscache_n_attr_changed_calls);

	if (FUNC3(object) &&
	    FUNC9(object)) {
		FUNC5(op, "CallFS");
		FUNC6(&fscache_n_cop_attr_changed);
		ret = object->cache->ops->attr_changed(object);
		FUNC7(&fscache_n_cop_attr_changed);
		FUNC5(op, "Done");
		FUNC8(object);
		if (ret < 0)
			FUNC2(object);
	}

	FUNC4(op, true);
	FUNC1("");
}