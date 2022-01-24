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
struct console {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kgdb_active ; 
 int /*<<< orphan*/  kgdb_connected ; 
 int /*<<< orphan*/  FUNC1 (char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static void FUNC4(struct console *co, const char *s,
   unsigned count)
{
	unsigned long flags;

	/* If we're debugging, or KGDB has not connected, don't try
	 * and print. */
	if (!kgdb_connected || FUNC0(&kgdb_active) != -1)
		return;

	FUNC3(flags);
	FUNC1(s, count);
	FUNC2(flags);
}