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
struct utrace_engine_ops {int /*<<< orphan*/  release; } ;
struct utrace_engine {int /*<<< orphan*/  release; void* data; struct utrace_engine_ops const* ops; scalar_t__ flags; int /*<<< orphan*/  kref; } ;
struct utrace {int /*<<< orphan*/  lock; } ;
struct task_struct {int flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPERM ; 
 struct utrace_engine* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PF_KTHREAD ; 
 int UTRACE_ATTACH_CREATE ; 
 struct utrace_engine* FUNC1 (struct utrace*,int,struct utrace_engine_ops const*,void*) ; 
 struct utrace_engine* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct utrace_engine*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct utrace* FUNC7 (struct task_struct*) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (struct task_struct*,struct utrace*,struct utrace_engine*,int,struct utrace_engine_ops const*,void*) ; 
 struct utrace_engine_ops const utrace_detached_ops ; 
 int /*<<< orphan*/  utrace_engine_cachep ; 
 int /*<<< orphan*/  FUNC10 (struct utrace_engine*) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*) ; 

struct utrace_engine *FUNC12(
	struct task_struct *target, int flags,
	const struct utrace_engine_ops *ops, void *data)
{
	struct utrace *utrace = FUNC7(target);
	struct utrace_engine *engine;
	int ret;

	if (!(flags & UTRACE_ATTACH_CREATE)) {
		if (FUNC8(!utrace))
			return FUNC0(-ENOENT);
		FUNC5(&utrace->lock);
		engine = FUNC1(utrace, flags, ops, data);
		if (engine)
			FUNC10(engine);
		FUNC6(&utrace->lock);
		return engine ?: FUNC0(-ENOENT);
	}

	if (FUNC8(!ops) || FUNC8(ops == &utrace_detached_ops))
		return FUNC0(-EINVAL);

	if (FUNC8(target->flags & PF_KTHREAD))
		/*
		 * Silly kernel, utrace is for users!
		 */
		return FUNC0(-EPERM);

	if (!utrace) {
		if (FUNC8(!FUNC11(target)))
			return FUNC0(-ENOMEM);
		utrace = FUNC7(target);
	}

	engine = FUNC2(utrace_engine_cachep, GFP_KERNEL);
	if (FUNC8(!engine))
		return FUNC0(-ENOMEM);

	/*
	 * Initialize the new engine structure.  It starts out with two
	 * refs: one ref to return, and one ref for being attached.
	 */
	FUNC4(&engine->kref, 2);
	engine->flags = 0;
	engine->ops = ops;
	engine->data = data;
	engine->release = ops->release;

	ret = FUNC9(target, utrace, engine, flags, ops, data);

	if (FUNC8(ret)) {
		FUNC3(utrace_engine_cachep, engine);
		engine = FUNC0(ret);
	}

	return engine;
}