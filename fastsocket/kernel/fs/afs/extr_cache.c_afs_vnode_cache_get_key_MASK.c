#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  unique; } ;
struct TYPE_3__ {int /*<<< orphan*/  data_version; } ;
struct afs_vnode {TYPE_2__ fid; TYPE_1__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static uint16_t FUNC3(const void *cookie_netfs_data,
					void *buffer, uint16_t bufmax)
{
	const struct afs_vnode *vnode = cookie_netfs_data;
	uint16_t klen;

	FUNC0("{%x,%x,%llx},%p,%u",
	       vnode->fid.vnode, vnode->fid.unique, vnode->status.data_version,
	       buffer, bufmax);

	klen = sizeof(vnode->fid.vnode);
	if (klen > bufmax)
		return 0;

	FUNC2(buffer, &vnode->fid.vnode, sizeof(vnode->fid.vnode));

	FUNC1(" = %u", klen);
	return klen;
}