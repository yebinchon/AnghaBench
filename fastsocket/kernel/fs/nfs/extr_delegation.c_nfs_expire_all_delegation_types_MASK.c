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
struct nfs_client {int dummy; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_client*) ; 

void FUNC2(struct nfs_client *clp, fmode_t flags)
{
	FUNC0(clp, flags);
	FUNC1(clp);
}