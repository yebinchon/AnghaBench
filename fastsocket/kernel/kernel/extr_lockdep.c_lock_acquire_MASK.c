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
struct lockdep_map {int dummy; } ;
struct TYPE_2__ {int lockdep_recursion; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lockdep_map*,unsigned int,int,int,int,int /*<<< orphan*/ ,struct lockdep_map*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct lockdep_map*,unsigned int,int,int,int,struct lockdep_map*,unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 

void FUNC7(struct lockdep_map *lock, unsigned int subclass,
			  int trylock, int read, int check,
			  struct lockdep_map *nest_lock, unsigned long ip)
{
	unsigned long flags;

	FUNC5(lock, subclass, trylock, read, check, nest_lock, ip);

	if (FUNC6(current->lockdep_recursion))
		return;

	FUNC4(flags);
	FUNC1(flags);

	current->lockdep_recursion = 1;
	FUNC0(lock, subclass, trylock, read, check,
		       FUNC2(flags), nest_lock, ip, 0);
	current->lockdep_recursion = 0;
	FUNC3(flags);
}