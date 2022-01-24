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
struct data {size_t len; scalar_t__ val; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct data FUNC0 (struct data,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 struct data empty_data ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (scalar_t__,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

struct data FUNC6(FILE *f, size_t maxlen)
{
	struct data d = empty_data;

	while (!FUNC2(f) && (d.len < maxlen)) {
		size_t chunksize, ret;

		if (maxlen == -1)
			chunksize = 4096;
		else
			chunksize = maxlen - d.len;

		d = FUNC0(d, chunksize);
		ret = FUNC4(d.val + d.len, 1, chunksize, f);

		if (FUNC3(f))
			FUNC1("Error reading file into data: %s", FUNC5(errno));

		if (d.len + ret < d.len)
			FUNC1("Overflow reading file into data\n");

		d.len += ret;
	}

	return d;
}