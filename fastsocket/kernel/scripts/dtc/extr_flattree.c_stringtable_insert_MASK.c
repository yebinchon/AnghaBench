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
struct data {int len; scalar_t__ val; } ;

/* Variables and functions */
 struct data FUNC0 (struct data,char const*,scalar_t__) ; 
 scalar_t__ FUNC1 (char const*,scalar_t__) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(struct data *d, const char *str)
{
	int i;

	/* FIXME: do this more efficiently? */

	for (i = 0; i < d->len; i++) {
		if (FUNC1(str, d->val + i))
			return i;
	}

	*d = FUNC0(*d, str, FUNC2(str)+1);
	return i;
}