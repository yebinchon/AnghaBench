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
typedef  int /*<<< orphan*/  version ;
typedef  int /*<<< orphan*/  unique ;
typedef  int uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  data_version; } ;
struct TYPE_3__ {int /*<<< orphan*/  unique; int /*<<< orphan*/  vnode; } ;
struct afs_vnode {TYPE_2__ status; TYPE_1__ fid; } ;
typedef  enum fscache_checkaux { ____Placeholder_fscache_checkaux } fscache_checkaux ;
typedef  unsigned int afs_dataversion_t ;

/* Variables and functions */
 int FSCACHE_CHECKAUX_OBSOLETE ; 
 int FSCACHE_CHECKAUX_OKAY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (void const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,void const*,int) ; 

__attribute__((used)) static enum fscache_checkaux FUNC4(void *cookie_netfs_data,
						       const void *buffer,
						       uint16_t buflen)
{
	struct afs_vnode *vnode = cookie_netfs_data;
	uint16_t dlen;

	FUNC0("{%x,%x,%llx},%p,%u",
	       vnode->fid.vnode, vnode->fid.unique, vnode->status.data_version,
	       buffer, buflen);

	/* check the size of the data is what we're expecting */
	dlen = sizeof(vnode->fid.unique) + sizeof(vnode->status.data_version);
	if (dlen != buflen) {
		FUNC1(" = OBSOLETE [len %hx != %hx]", dlen, buflen);
		return FSCACHE_CHECKAUX_OBSOLETE;
	}

	if (FUNC2(buffer,
		   &vnode->fid.unique,
		   sizeof(vnode->fid.unique)
		   ) != 0) {
		unsigned unique;

		FUNC3(&unique, buffer, sizeof(unique));

		FUNC1(" = OBSOLETE [uniq %x != %x]",
		       unique, vnode->fid.unique);
		return FSCACHE_CHECKAUX_OBSOLETE;
	}

	if (FUNC2(buffer + sizeof(vnode->fid.unique),
		   &vnode->status.data_version,
		   sizeof(vnode->status.data_version)
		   ) != 0) {
		afs_dataversion_t version;

		FUNC3(&version, buffer + sizeof(vnode->fid.unique),
		       sizeof(version));

		FUNC1(" = OBSOLETE [vers %llx != %llx]",
		       version, vnode->status.data_version);
		return FSCACHE_CHECKAUX_OBSOLETE;
	}

	FUNC1(" = SUCCESS");
	return FSCACHE_CHECKAUX_OKAY;
}