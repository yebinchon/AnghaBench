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
struct prio_tree_node {unsigned long start; unsigned long last; } ;
struct kmemleak_object {int flags; unsigned long pointer; size_t size; int min_count; int count; int /*<<< orphan*/  object_list; int /*<<< orphan*/  lock; struct prio_tree_node tree_node; int /*<<< orphan*/  trace; int /*<<< orphan*/  trace_len; int /*<<< orphan*/  comm; scalar_t__ pid; int /*<<< orphan*/  jiffies; int /*<<< orphan*/  use_count; int /*<<< orphan*/  area_list; int /*<<< orphan*/  gray_list; } ;
typedef  int gfp_t ;
struct TYPE_2__ {char* comm; scalar_t__ pid; } ;

/* Variables and functions */
 int GFP_KMEMLEAK_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct prio_tree_node*) ; 
 int OBJECT_ALLOCATED ; 
 int OBJECT_NEW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC5 (struct kmemleak_object*) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  jiffies ; 
 struct kmemleak_object* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  kmemleak_lock ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct kmemleak_object* FUNC11 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  max_addr ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  min_addr ; 
 int /*<<< orphan*/  object_cache ; 
 int /*<<< orphan*/  object_list ; 
 int /*<<< orphan*/  object_tree_root ; 
 struct prio_tree_node* FUNC14 (int /*<<< orphan*/ *,struct prio_tree_node*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct kmemleak_object *FUNC21(unsigned long ptr, size_t size,
					     int min_count, gfp_t gfp)
{
	unsigned long flags;
	struct kmemleak_object *object;
	struct prio_tree_node *node;

	object = FUNC8(object_cache, gfp & GFP_KMEMLEAK_MASK);
	if (!object) {
		FUNC9("Cannot allocate a kmemleak_object structure\n");
		return NULL;
	}

	FUNC1(&object->object_list);
	FUNC1(&object->gray_list);
	FUNC0(&object->area_list);
	FUNC16(&object->lock);
	FUNC4(&object->use_count, 1);
	object->flags = OBJECT_ALLOCATED | OBJECT_NEW;
	object->pointer = ptr;
	object->size = size;
	object->min_count = min_count;
	object->count = -1;			/* no color initially */
	object->jiffies = jiffies;

	/* task information */
	if (FUNC6()) {
		object->pid = 0;
		FUNC18(object->comm, "hardirq", sizeof(object->comm));
	} else if (FUNC7()) {
		object->pid = 0;
		FUNC18(object->comm, "softirq", sizeof(object->comm));
	} else {
		object->pid = current->pid;
		/*
		 * There is a small chance of a race with set_task_comm(),
		 * however using get_task_comm() here may cause locking
		 * dependency issues with current->alloc_lock. In the worst
		 * case, the command line is not correct.
		 */
		FUNC18(object->comm, current->comm, sizeof(object->comm));
	}

	/* kernel backtrace */
	object->trace_len = FUNC3(object->trace);

	FUNC2(&object->tree_node);
	object->tree_node.start = ptr;
	object->tree_node.last = ptr + size - 1;

	FUNC19(&kmemleak_lock, flags);

	min_addr = FUNC13(min_addr, ptr);
	max_addr = FUNC12(max_addr, ptr + size);
	node = FUNC14(&object_tree_root, &object->tree_node);
	/*
	 * The code calling the kernel does not yet have the pointer to the
	 * memory block to be able to free it.  However, we still hold the
	 * kmemleak_lock here in case parts of the kernel started freeing
	 * random memory blocks.
	 */
	if (node != &object->tree_node) {
		FUNC9("Cannot insert 0x%lx into the object search tree "
			      "(already existing)\n", ptr);
		object = FUNC11(ptr, 1);
		FUNC15(&object->lock);
		FUNC5(object);
		FUNC17(&object->lock);

		goto out;
	}
	FUNC10(&object->object_list, &object_list);
out:
	FUNC20(&kmemleak_lock, flags);
	return object;
}