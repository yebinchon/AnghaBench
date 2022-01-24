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
 int /*<<< orphan*/  F_OK ; 
 size_t PATH_MAX ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,size_t const) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t const,char*,char const*,char const*,char const*) ; 
 scalar_t__ FUNC4 (char*) ; 
 char* FUNC5 (size_t const) ; 

int FUNC6(const char *sbuild_id, const char *debugdir)
{
	const size_t size = PATH_MAX;
	char *filename = FUNC5(size),
	     *linkname = FUNC5(size);
	int err = -1;

	if (filename == NULL || linkname == NULL)
		goto out_free;

	FUNC3(linkname, size, "%s/.build-id/%.2s/%s",
		 debugdir, sbuild_id, sbuild_id + 2);

	if (FUNC0(linkname, F_OK))
		goto out_free;

	if (FUNC2(linkname, filename, size - 1) < 0)
		goto out_free;

	if (FUNC4(linkname))
		goto out_free;

	/*
	 * Since the link is relative, we must make it absolute:
	 */
	FUNC3(linkname, size, "%s/.build-id/%.2s/%s",
		 debugdir, sbuild_id, filename);

	if (FUNC4(linkname))
		goto out_free;

	err = 0;
out_free:
	FUNC1(filename);
	FUNC1(linkname);
	return err;
}