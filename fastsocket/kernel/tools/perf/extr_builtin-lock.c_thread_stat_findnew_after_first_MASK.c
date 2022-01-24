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
typedef  int /*<<< orphan*/  u32 ;
struct thread_stat {int /*<<< orphan*/  seq_list; int /*<<< orphan*/  tid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct thread_stat* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct thread_stat*) ; 
 struct thread_stat* FUNC4 (int) ; 

__attribute__((used)) static struct thread_stat *FUNC5(u32 tid)
{
	struct thread_stat *st;

	st = FUNC2(tid);
	if (st)
		return st;

	st = FUNC4(sizeof(struct thread_stat));
	if (!st) {
		FUNC1("memory allocation failed\n");
		return NULL;
	}

	st->tid = tid;
	FUNC0(&st->seq_list);

	FUNC3(st);

	return st;
}