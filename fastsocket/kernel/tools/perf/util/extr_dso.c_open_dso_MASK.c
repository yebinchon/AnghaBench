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
struct machine {char* root_dir; } ;
struct dso {int /*<<< orphan*/  data_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PATH_MAX ; 
 scalar_t__ FUNC0 (struct dso*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dso *dso, struct machine *machine)
{
	char *root_dir = (char *) "";
	char *name;
	int fd;

	name = FUNC2(PATH_MAX);
	if (!name)
		return -ENOMEM;

	if (machine)
		root_dir = machine->root_dir;

	if (FUNC0(dso, dso->data_type,
				  root_dir, name, PATH_MAX)) {
		FUNC1(name);
		return -EINVAL;
	}

	fd = FUNC3(name, O_RDONLY);
	FUNC1(name);
	return fd;
}