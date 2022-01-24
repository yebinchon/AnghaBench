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
struct nfs_fattr {TYPE_1__* owner_name; int /*<<< orphan*/  valid; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_ATTR_FATTR_OWNER_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct nfs_fattr *fattr)
{
	fattr->valid &= ~NFS_ATTR_FATTR_OWNER_NAME;
	FUNC0(fattr->owner_name->data);
}