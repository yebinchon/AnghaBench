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
struct iovec {int iov_len; void* iov_base; } ;

/* Variables and functions */
 struct iovec* FUNC0 (struct iovec*,int) ; 
 void* FUNC1 (char const*) ; 
 int FUNC2 (void*) ; 

__attribute__((used)) static void
FUNC3(struct iovec **iov, int *iovlen, const char *name, void *val,
    size_t len)
{
	int i;

	if (*iovlen < 0)
		return;
	i = *iovlen;
	*iov = FUNC0(*iov, sizeof(**iov) * (i + 2));
	if (*iov == NULL) {
		*iovlen = -1;
		return;
	}
	(*iov)[i].iov_base = FUNC1(name);
	(*iov)[i].iov_len = FUNC2(name) + 1;
	i++;
	(*iov)[i].iov_base = val;
	if (len == (size_t)-1) {
		if (val != NULL)
			len = FUNC2(val) + 1;
		else
			len = 0;
	}
	(*iov)[i].iov_len = (int)len;
	*iovlen = ++i;
}