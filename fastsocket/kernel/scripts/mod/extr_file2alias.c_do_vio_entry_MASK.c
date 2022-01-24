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
struct vio_device_id {char* type; char* compat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*) ; 

__attribute__((used)) static int FUNC3(const char *filename, struct vio_device_id *vio,
		char *alias)
{
	char *tmp;

	FUNC2(alias, "vio:T%sS%s", vio->type[0] ? vio->type : "*",
			vio->compat[0] ? vio->compat : "*");

	/* Replace all whitespace with underscores */
	for (tmp = alias; tmp && *tmp; tmp++)
		if (FUNC1 (*tmp))
			*tmp = '_';

	FUNC0(alias);
	return 1;
}