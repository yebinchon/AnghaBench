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
struct dn_hash {int dummy; } ;
struct dn_fib_node {int fn_state; struct dn_fib_node* fn_next; } ;
struct dn_fib_info {int fib_flags; } ;

/* Variables and functions */
 struct dn_fib_info* FUNC0 (struct dn_fib_node*) ; 
 int DN_S_ZOMBIE ; 
 int RTNH_F_DEAD ; 
 int /*<<< orphan*/  dn_fib_tables_lock ; 
 int /*<<< orphan*/  FUNC1 (struct dn_fib_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC4(struct dn_fib_node **fp, int z, struct dn_hash *table)
{
	int found = 0;
	struct dn_fib_node *f;

	while((f = *fp) != NULL) {
		struct dn_fib_info *fi = FUNC0(f);

		if (fi && ((f->fn_state & DN_S_ZOMBIE) || (fi->fib_flags & RTNH_F_DEAD))) {
			FUNC2(&dn_fib_tables_lock);
			*fp = f->fn_next;
			FUNC3(&dn_fib_tables_lock);

			FUNC1(f);
			found++;
			continue;
		}
		fp = &f->fn_next;
	}

	return found;
}