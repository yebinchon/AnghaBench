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
struct mnt_namespace {unsigned int proc_inum; } ;

/* Variables and functions */

__attribute__((used)) static unsigned int FUNC0(void *ns)
{
	struct mnt_namespace *mnt_ns = ns;
	return mnt_ns->proc_inum;
}