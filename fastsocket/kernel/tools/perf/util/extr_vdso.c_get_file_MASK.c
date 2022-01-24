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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (void**,void**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (void*,size_t) ; 
 int FUNC4 (char*) ; 
 char* vdso_file ; 
 int vdso_found ; 
 scalar_t__ FUNC5 (int,char*,size_t) ; 

__attribute__((used)) static char *FUNC6(void)
{
	char *vdso = NULL;
	char *buf = NULL;
	void *start, *end;
	size_t size;
	int fd;

	if (vdso_found)
		return vdso_file;

	if (FUNC1(&start, &end))
		return NULL;

	size = end - start;

	buf = FUNC3(start, size);
	if (!buf)
		return NULL;

	fd = FUNC4(vdso_file);
	if (fd < 0)
		goto out;

	if (size == (size_t) FUNC5(fd, buf, size))
		vdso = vdso_file;

	FUNC0(fd);

 out:
	FUNC2(buf);

	vdso_found = (vdso != NULL);
	return vdso;
}