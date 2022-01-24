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
struct nf_conntrack_expect {scalar_t__ master; scalar_t__ class; int /*<<< orphan*/  mask; int /*<<< orphan*/  tuple; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(const struct nf_conntrack_expect *a,
				 const struct nf_conntrack_expect *b)
{
	return a->master == b->master && a->class == b->class
		&& FUNC0(&a->tuple, &b->tuple)
		&& FUNC1(&a->mask, &b->mask);
}