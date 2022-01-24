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
struct stat {scalar_t__ st_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* depfile ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,struct stat*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,scalar_t__) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC9(void)
{
	struct stat st;
	int fd;
	void *map;

	fd = FUNC6(depfile, O_RDONLY);
	if (fd < 0) {
		FUNC2(stderr, "fixdep: ");
		FUNC8(depfile);
		FUNC1(2);
	}
	FUNC3(fd, &st);
	if (st.st_size == 0) {
		FUNC2(stderr,"fixdep: %s is empty\n",depfile);
		FUNC0(fd);
		return;
	}
	map = FUNC4(NULL, st.st_size, PROT_READ, MAP_PRIVATE, fd, 0);
	if ((long) map == -1) {
		FUNC8("fixdep: mmap");
		FUNC0(fd);
		return;
	}

	FUNC7(map, st.st_size);

	FUNC5(map, st.st_size);

	FUNC0(fd);
}