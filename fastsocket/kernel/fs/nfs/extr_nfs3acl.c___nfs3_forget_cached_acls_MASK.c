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
struct nfs_inode {void* acl_default; void* acl_access; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static void FUNC3(struct nfs_inode *nfsi)
{
	if (!FUNC1(nfsi->acl_access)) {
		FUNC2(nfsi->acl_access);
		nfsi->acl_access = FUNC0(-EAGAIN);
	}
	if (!FUNC1(nfsi->acl_default)) {
		FUNC2(nfsi->acl_default);
		nfsi->acl_default = FUNC0(-EAGAIN);
	}
}