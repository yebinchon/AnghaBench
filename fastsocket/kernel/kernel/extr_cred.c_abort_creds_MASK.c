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
struct cred {int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct cred*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct cred*) ; 
 scalar_t__ FUNC4 (struct cred*) ; 

void FUNC5(struct cred *new)
{
	FUNC2("abort_creds(%p{%d,%d})", new,
	       FUNC1(&new->usage),
	       FUNC4(new));

#ifdef CONFIG_DEBUG_CREDENTIALS
	BUG_ON(read_cred_subscribers(new) != 0);
#endif
	FUNC0(FUNC1(&new->usage) < 1);
	FUNC3(new);
}