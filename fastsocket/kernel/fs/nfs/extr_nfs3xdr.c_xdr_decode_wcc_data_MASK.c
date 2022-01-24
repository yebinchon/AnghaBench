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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,struct nfs_fattr*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,struct nfs_fattr*) ; 

__attribute__((used)) static inline __be32 *
FUNC2(__be32 *p, struct nfs_fattr *fattr)
{
	p = FUNC1(p, fattr);
	return FUNC0(p, fattr);
}