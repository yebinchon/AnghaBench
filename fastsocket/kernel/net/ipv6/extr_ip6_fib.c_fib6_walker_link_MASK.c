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
struct fib6_walker_t {struct fib6_walker_t* next; struct fib6_walker_t* prev; } ;

/* Variables and functions */
 struct fib6_walker_t fib6_walker_list ; 
 int /*<<< orphan*/  fib6_walker_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct fib6_walker_t *w)
{
	FUNC0(&fib6_walker_lock);
	w->next = fib6_walker_list.next;
	w->prev = &fib6_walker_list;
	w->next->prev = w;
	w->prev->next = w;
	FUNC1(&fib6_walker_lock);
}