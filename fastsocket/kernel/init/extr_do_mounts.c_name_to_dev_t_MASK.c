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
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (unsigned int,unsigned int) ; 
 scalar_t__ Root_NFS ; 
 scalar_t__ Root_RAM0 ; 
 scalar_t__ FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (char*,char**,int) ; 
 int FUNC7 (char*,char*,unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*,int) ; 

dev_t FUNC12(char *name)
{
	char s[32];
	char *p;
	dev_t res = 0;
	int part;

	if (FUNC11(name, "/dev/", 5) != 0) {
		unsigned maj, min;

		if (FUNC7(name, "%u:%u", &maj, &min) == 2) {
			res = FUNC2(maj, min);
			if (maj != FUNC0(res) || min != FUNC1(res))
				goto fail;
		} else {
			res = FUNC5(FUNC6(name, &p, 16));
			if (*p)
				goto fail;
		}
		goto done;
	}

	name += 5;
	res = Root_NFS;
	if (FUNC8(name, "nfs") == 0)
		goto done;
	res = Root_RAM0;
	if (FUNC8(name, "ram") == 0)
		goto done;

	if (FUNC10(name) > 31)
		goto fail;
	FUNC9(s, name);
	for (p = s; *p; p++)
		if (*p == '/')
			*p = '!';
	res = FUNC3(s, 0);
	if (res)
		goto done;

	/*
	 * try non-existant, but valid partition, which may only exist
	 * after revalidating the disk, like partitioned md devices
	 */
	while (p > s && FUNC4(p[-1]))
		p--;
	if (p == s || !*p || *p == '0')
		goto fail;

	/* try disk name without <part number> */
	part = FUNC6(p, NULL, 10);
	*p = '\0';
	res = FUNC3(s, part);
	if (res)
		goto done;

	/* try disk name without p<part number> */
	if (p < s + 2 || !FUNC4(p[-2]) || p[-1] != 'p')
		goto fail;
	p[-1] = '\0';
	res = FUNC3(s, part);
	if (res)
		goto done;

fail:
	return 0;
done:
	return res;
}