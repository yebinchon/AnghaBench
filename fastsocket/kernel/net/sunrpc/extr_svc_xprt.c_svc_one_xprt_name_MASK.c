#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct svc_xprt {TYPE_1__* xpt_class; } ;
struct TYPE_2__ {char* xcl_name; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int FUNC0 (char*,int,char*,char*,int) ; 
 int FUNC1 (struct svc_xprt const*) ; 

__attribute__((used)) static int FUNC2(const struct svc_xprt *xprt,
			     char *pos, int remaining)
{
	int len;

	len = FUNC0(pos, remaining, "%s %u\n",
			xprt->xpt_class->xcl_name,
			FUNC1(xprt));
	if (len >= remaining)
		return -ENAMETOOLONG;
	return len;
}