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
struct ipc_namespace {int dummy; } ;

/* Variables and functions */
 unsigned long CLONE_NEWIPC ; 
 struct ipc_namespace* FUNC0 () ; 
 struct ipc_namespace* FUNC1 (struct ipc_namespace*) ; 

struct ipc_namespace *FUNC2(unsigned long flags, struct ipc_namespace *ns)
{
	if (!(flags & CLONE_NEWIPC))
		return FUNC1(ns);
	return FUNC0();
}