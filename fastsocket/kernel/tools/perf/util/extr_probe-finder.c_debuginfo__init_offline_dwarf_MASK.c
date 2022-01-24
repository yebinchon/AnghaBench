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
struct debuginfo {scalar_t__ dwfl; int /*<<< orphan*/  dbg; int /*<<< orphan*/  bias; } ;
typedef  int /*<<< orphan*/  Dwfl_Module ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct debuginfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  offline_callbacks ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct debuginfo *self,
					 const char *path)
{
	Dwfl_Module *mod;
	int fd;

	fd = FUNC6(path, O_RDONLY);
	if (fd < 0)
		return fd;

	self->dwfl = FUNC1(&offline_callbacks);
	if (!self->dwfl)
		goto error;

	mod = FUNC4(self->dwfl, "", "", fd);
	if (!mod)
		goto error;

	self->dbg = FUNC3(mod, &self->bias);
	if (!self->dbg)
		goto error;

	return 0;
error:
	if (self->dwfl)
		FUNC2(self->dwfl);
	else
		FUNC0(fd);
	FUNC5(self, 0, sizeof(*self));

	return -ENOENT;
}