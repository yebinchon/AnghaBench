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
struct ops_list {int used; int /*<<< orphan*/  list; int /*<<< orphan*/  dev_list; int /*<<< orphan*/  driver; int /*<<< orphan*/  reg_mutex; int /*<<< orphan*/  id; } ;
struct lock_class_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_EMPTY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ops_list* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct lock_class_key*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  num_ops ; 
 int /*<<< orphan*/  ops_mutex ; 
 int /*<<< orphan*/  opslist ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static struct ops_list * FUNC8(char *id)
{
	struct ops_list *ops;

	ops = FUNC1(sizeof(*ops), GFP_KERNEL);
	if (ops == NULL)
		return ops;

	/* set up driver entry */
	FUNC7(ops->id, id, sizeof(ops->id));
	FUNC4(&ops->reg_mutex);
	/*
	 * The ->reg_mutex locking rules are per-driver, so we create
	 * separate per-driver lock classes:
	 */
	FUNC3(&ops->reg_mutex, (struct lock_class_key *)id);

	ops->driver = DRIVER_EMPTY;
	FUNC0(&ops->dev_list);
	/* lock this instance */
	ops->used = 1;

	/* register driver entry */
	FUNC5(&ops_mutex);
	FUNC2(&ops->list, &opslist);
	num_ops++;
	FUNC6(&ops_mutex);

	return ops;
}