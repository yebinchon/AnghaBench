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
struct dlm_ls {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dlm_ls*,int,char*,int,int*) ; 

int FUNC1(struct dlm_ls *ls, int nodeid, char *name, int namelen,
		   int *r_nodeid)
{
	return FUNC0(ls, nodeid, name, namelen, r_nodeid);
}