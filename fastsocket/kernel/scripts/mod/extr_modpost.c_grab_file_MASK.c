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
struct stat {unsigned long st_size; } ;

/* Variables and functions */
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,unsigned long,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 

void *FUNC4(const char *filename, unsigned long *size)
{
	struct stat st;
	void *map;
	int fd;

	fd = FUNC3(filename, O_RDONLY);
	if (fd < 0 || FUNC1(fd, &st) != 0)
		return NULL;

	*size = st.st_size;
	map = FUNC2(NULL, *size, PROT_READ|PROT_WRITE, MAP_PRIVATE, fd, 0);
	FUNC0(fd);

	if (map == MAP_FAILED)
		return NULL;
	return map;
}