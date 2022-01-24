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
struct kernel_param {scalar_t__ arg; } ;

/* Variables and functions */
#define  SVC_POOL_AUTO 131 
#define  SVC_POOL_GLOBAL 130 
#define  SVC_POOL_PERCPU 129 
#define  SVC_POOL_PERNODE 128 
 int FUNC0 (char*,char*,int) ; 
 int FUNC1 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC2(char *buf, struct kernel_param *kp)
{
	int *ip = (int *)kp->arg;

	switch (*ip)
	{
	case SVC_POOL_AUTO:
		return FUNC1(buf, "auto", 20);
	case SVC_POOL_GLOBAL:
		return FUNC1(buf, "global", 20);
	case SVC_POOL_PERCPU:
		return FUNC1(buf, "percpu", 20);
	case SVC_POOL_PERNODE:
		return FUNC1(buf, "pernode", 20);
	default:
		return FUNC0(buf, "%d", *ip);
	}
}