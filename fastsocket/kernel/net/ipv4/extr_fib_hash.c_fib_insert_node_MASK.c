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
struct hlist_head {int dummy; } ;
struct fn_zone {struct hlist_head* fz_hash; } ;
struct fib_node {int /*<<< orphan*/  fn_hash; int /*<<< orphan*/  fn_key; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,struct fn_zone*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hlist_head*) ; 

__attribute__((used)) static inline void FUNC2(struct fn_zone *fz, struct fib_node *f)
{
	struct hlist_head *head = &fz->fz_hash[FUNC0(f->fn_key, fz)];

	FUNC1(&f->fn_hash, head);
}