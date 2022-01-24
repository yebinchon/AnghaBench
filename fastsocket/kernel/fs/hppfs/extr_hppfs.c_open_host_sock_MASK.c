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

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 size_t FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(char *host_file, int *filter_out)
{
	char *end;
	int fd;

	end = &host_file[FUNC2(host_file)];
	FUNC1(end, "/rw");
	*filter_out = 1;
	fd = FUNC0(host_file);
	if (fd > 0)
		return fd;

	FUNC1(end, "/r");
	*filter_out = 0;
	fd = FUNC0(host_file);
	return fd;
}