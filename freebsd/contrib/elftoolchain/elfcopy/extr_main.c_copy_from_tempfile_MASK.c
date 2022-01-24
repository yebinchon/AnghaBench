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
 scalar_t__ EXDEV ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ errno ; 
 int FUNC2 (char const*,int,int) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static int
FUNC5(const char *src, const char *dst, int infd, int *outfd,
    int in_place)
{
	int tmpfd;

	/*
	 * First, check if we can use rename().
	 */
	if (in_place == 0) {
		if (FUNC3(src, dst) >= 0) {
			*outfd = infd;
			return (0);
		} else if (errno != EXDEV)
			return (-1);
	
		/*
		 * If the rename() failed due to 'src' and 'dst' residing in
		 * two different file systems, invoke a helper function in
		 * libelftc to do the copy.
		 */

		if (FUNC4(dst) < 0)
			return (-1);
	}

	if ((tmpfd = FUNC2(dst, O_CREAT | O_TRUNC | O_WRONLY, 0755)) < 0)
		return (-1);

	if (FUNC1(infd, tmpfd) < 0)
		return (-1);

	/*
	 * Remove the temporary file from the file system
	 * namespace, and close its file descriptor.
	 */
	if (FUNC4(src) < 0)
		return (-1);

	(void) FUNC0(infd);

	/*
	 * Return the file descriptor for the destination.
	 */
	*outfd = tmpfd;

	return (0);
}