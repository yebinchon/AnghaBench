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
struct fscache_state {int dummy; } ;
struct fscache_object {int dummy; } ;

/* Variables and functions */
 struct fscache_state* FUNC0 (struct fscache_object*,int) ; 
 int /*<<< orphan*/  fscache_n_cop_invalidate_object ; 
 int /*<<< orphan*/  fscache_n_invalidates_run ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const struct fscache_state *FUNC3(struct fscache_object *object,
							     int event)
{
	const struct fscache_state *s;

	FUNC1(&fscache_n_invalidates_run);
	FUNC1(&fscache_n_cop_invalidate_object);
	s = FUNC0(object, event);
	FUNC2(&fscache_n_cop_invalidate_object);
	return s;
}