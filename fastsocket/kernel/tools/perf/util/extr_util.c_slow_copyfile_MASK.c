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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char**,size_t*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(const char *from, const char *to)
{
	int err = 0;
	char *line = NULL;
	size_t n;
	FILE *from_fp = FUNC1(from, "r"), *to_fp;

	if (from_fp == NULL)
		goto out;

	to_fp = FUNC1(to, "w");
	if (to_fp == NULL)
		goto out_fclose_from;

	while (FUNC4(&line, &n, from_fp) > 0)
		if (FUNC2(line, to_fp) == EOF)
			goto out_fclose_to;
	err = 0;
out_fclose_to:
	FUNC0(to_fp);
	FUNC3(line);
out_fclose_from:
	FUNC0(from_fp);
out:
	return err;
}