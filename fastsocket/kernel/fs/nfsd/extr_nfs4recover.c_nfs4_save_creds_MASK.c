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
struct cred {scalar_t__ fsgid; scalar_t__ fsuid; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct cred* FUNC0 (struct cred*) ; 
 struct cred* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct cred*) ; 

__attribute__((used)) static int
FUNC3(const struct cred **original_creds)
{
	struct cred *new;

	new = FUNC1();
	if (!new)
		return -ENOMEM;

	new->fsuid = 0;
	new->fsgid = 0;
	*original_creds = FUNC0(new);
	FUNC2(new);
	return 0;
}