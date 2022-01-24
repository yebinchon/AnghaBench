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
struct ip6_flowlabel {unsigned long lastuse; unsigned long linger; unsigned long expires; } ;

/* Variables and functions */
 int EPERM ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct ip6_flowlabel *fl, unsigned long linger, unsigned long expires)
{
	linger = FUNC0(linger);
	if (!linger)
		return -EPERM;
	expires = FUNC0(expires);
	if (!expires)
		return -EPERM;
	fl->lastuse = jiffies;
	if (FUNC1(fl->linger, linger))
		fl->linger = linger;
	if (FUNC1(expires, fl->linger))
		expires = fl->linger;
	if (FUNC1(fl->expires, fl->lastuse + expires))
		fl->expires = fl->lastuse + expires;
	return 0;
}