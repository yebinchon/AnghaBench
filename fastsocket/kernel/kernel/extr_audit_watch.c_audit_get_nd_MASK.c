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
struct nameidata {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LOOKUP_PARENT ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*) ; 
 struct nameidata* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,struct nameidata*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(char *path, struct nameidata **ndp, struct nameidata **ndw)
{
	struct nameidata *ndparent, *ndwatch;
	int err;

	ndparent = FUNC1(sizeof(*ndparent), GFP_KERNEL);
	if (FUNC3(!ndparent))
		return -ENOMEM;

	ndwatch = FUNC1(sizeof(*ndwatch), GFP_KERNEL);
	if (FUNC3(!ndwatch)) {
		FUNC0(ndparent);
		return -ENOMEM;
	}

	err = FUNC2(path, LOOKUP_PARENT, ndparent);
	if (err) {
		FUNC0(ndparent);
		FUNC0(ndwatch);
		return err;
	}

	err = FUNC2(path, 0, ndwatch);
	if (err) {
		FUNC0(ndwatch);
		ndwatch = NULL;
	}

	*ndp = ndparent;
	*ndw = ndwatch;

	return 0;
}