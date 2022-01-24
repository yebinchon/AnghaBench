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
struct nfs_fattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 struct nfs_fattr* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_fattr*) ; 

struct nfs_fattr *FUNC2(void)
{
	struct nfs_fattr *fattr;

	fattr = FUNC0(sizeof(*fattr), GFP_NOFS);
	if (fattr != NULL)
		FUNC1(fattr);
	return fattr;
}