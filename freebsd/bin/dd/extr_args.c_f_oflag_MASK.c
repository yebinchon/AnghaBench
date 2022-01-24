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
struct oflag {int /*<<< orphan*/  set; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct oflag* FUNC0 (struct oflag*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  c_oflag ; 
 int /*<<< orphan*/  ddflags ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  olist ; 
 int /*<<< orphan*/  FUNC3 (char**,char*) ; 

__attribute__((used)) static void
FUNC4(char *arg)
{
	struct oflag *op, tmp;

	while (arg != NULL) {
		tmp.name = FUNC3(&arg, ",");
		op = FUNC0(&tmp, olist, FUNC2(olist), sizeof(struct oflag),
		    c_oflag);
		if (op == NULL)
			FUNC1(1, "unknown open flag %s", tmp.name);
		ddflags |= op->set;
	}
}