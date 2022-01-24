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
struct audit_watch {char* path; unsigned long ino; scalar_t__ dev; int /*<<< orphan*/  count; int /*<<< orphan*/  rules; } ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct audit_watch* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct audit_watch* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static struct audit_watch *FUNC5(char *path)
{
	struct audit_watch *watch;

	watch = FUNC3(sizeof(*watch), GFP_KERNEL);
	if (FUNC4(!watch))
		return FUNC0(-ENOMEM);

	FUNC1(&watch->rules);
	FUNC2(&watch->count, 1);
	watch->path = path;
	watch->dev = (dev_t)-1;
	watch->ino = (unsigned long)-1;

	return watch;
}