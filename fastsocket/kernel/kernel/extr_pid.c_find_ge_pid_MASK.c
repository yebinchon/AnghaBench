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
struct pid_namespace {int dummy; } ;
struct pid {int dummy; } ;

/* Variables and functions */
 struct pid* FUNC0 (int,struct pid_namespace*) ; 
 int FUNC1 (struct pid_namespace*,int) ; 

struct pid *FUNC2(int nr, struct pid_namespace *ns)
{
	struct pid *pid;

	do {
		pid = FUNC0(nr, ns);
		if (pid)
			break;
		nr = FUNC1(ns, nr);
	} while (nr > 0);

	return pid;
}