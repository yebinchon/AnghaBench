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
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,scalar_t__) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,char const*) ; 
 scalar_t__ FUNC6 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (int,void*,scalar_t__) ; 

int FUNC9(const char *from, const char *to)
{
	int fromfd, tofd;
	struct stat st;
	void *addr;
	int err = -1;

	if (FUNC6(from, &st))
		goto out;

	if (st.st_size == 0) /* /proc? do it slowly... */
		return FUNC5(from, to);

	fromfd = FUNC4(from, O_RDONLY);
	if (fromfd < 0)
		goto out;

	tofd = FUNC1(to, 0755);
	if (tofd < 0)
		goto out_close_from;

	addr = FUNC2(NULL, st.st_size, PROT_READ, MAP_PRIVATE, fromfd, 0);
	if (addr == MAP_FAILED)
		goto out_close_to;

	if (FUNC8(tofd, addr, st.st_size) == st.st_size)
		err = 0;

	FUNC3(addr, st.st_size);
out_close_to:
	FUNC0(tofd);
	if (err)
		FUNC7(to);
out_close_from:
	FUNC0(fromfd);
out:
	return err;
}