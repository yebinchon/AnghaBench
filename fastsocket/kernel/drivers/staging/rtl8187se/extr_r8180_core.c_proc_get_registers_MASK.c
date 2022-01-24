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
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int FUNC0 (struct net_device*,int) ; 
 scalar_t__ FUNC1 (char*,int,char*,...) ; 

__attribute__((used)) static int FUNC2(char *page, char **start,
			  off_t offset, int count,
			  int *eof, void *data)
{
	struct net_device *dev = data;
	int len = 0;
	int i,n;
	int max = 0xff;

	/* This dump the current register page */
	for (n = 0; n <= max;) {
		len += FUNC1(page + len, count - len, "\nD:  %2x > ", n);

		for (i = 0; i < 16 && n <= max; i++, n++)
			len += FUNC1(page + len, count - len, "%2x ",
					FUNC0(dev, n));
	}
	len += FUNC1(page + len, count - len,"\n");

	*eof = 1;
	return len;
}