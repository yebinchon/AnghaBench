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
struct iflag {int noset; int set; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct iflag* FUNC0 (struct iflag*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  c_iflag ; 
 int ddflags ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ilist ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char**,char*) ; 

__attribute__((used)) static void
FUNC4(char *arg)
{
	struct iflag *ip, tmp;

	while (arg != NULL) {
		tmp.name = FUNC3(&arg, ",");
		ip = FUNC0(&tmp, ilist, FUNC2(ilist), sizeof(struct iflag),
		    c_iflag);
		if (ip == NULL)
			FUNC1(1, "unknown iflag %s", tmp.name);
		if (ddflags & ip->noset)
			FUNC1(1, "%s: illegal conversion combination", tmp.name);
		ddflags |= ip->set;
	}
}