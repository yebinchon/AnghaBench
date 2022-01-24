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
typedef  char vfsmount ;
struct sockaddr_storage {int dummy; } ;
struct nfs_clone_mount {char* mnt_path; char* hostname; int /*<<< orphan*/ * addr; int /*<<< orphan*/  addrlen; } ;
struct nfs4_string {unsigned int len; int /*<<< orphan*/  data; } ;
struct nfs4_fs_location {unsigned int nservers; struct nfs4_string* servers; int /*<<< orphan*/  rootpath; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPV6_SCOPE_DELIMITER ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  NFS_PORT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (size_t const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs4_referral_fs_type ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,size_t const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct nfs_clone_mount*) ; 

__attribute__((used)) static struct vfsmount *FUNC12(struct nfs_clone_mount *mountdata,
				     char *page, char *page2,
				     const struct nfs4_fs_location *location)
{
	const size_t addr_bufsize = sizeof(struct sockaddr_storage);
	struct vfsmount *mnt = FUNC1(-ENOENT);
	char *mnt_path;
	unsigned int maxbuflen;
	unsigned int s;

	mnt_path = FUNC7(&location->rootpath, page2, PAGE_SIZE);
	if (FUNC2(mnt_path))
		return FUNC0(mnt_path);
	mountdata->mnt_path = mnt_path;
	maxbuflen = mnt_path - 1 - page2;

	mountdata->addr = FUNC4(addr_bufsize, GFP_KERNEL);
	if (mountdata->addr == NULL)
		return FUNC1(-ENOMEM);

	for (s = 0; s < location->nservers; s++) {
		const struct nfs4_string *buf = &location->servers[s];

		if (buf->len <= 0 || buf->len >= maxbuflen)
			continue;

		if (FUNC5(buf->data, IPV6_SCOPE_DELIMITER, buf->len))
			continue;

		mountdata->addrlen = FUNC8(buf->data, buf->len,
				mountdata->addr, addr_bufsize);
		if (mountdata->addrlen == 0)
			continue;

		FUNC9(mountdata->addr, NFS_PORT);

		FUNC6(page2, buf->data, buf->len);
		page2[buf->len] = '\0';
		mountdata->hostname = page2;

		FUNC10(page, PAGE_SIZE, "%s:%s",
				mountdata->hostname,
				mountdata->mnt_path);

		mnt = FUNC11(&nfs4_referral_fs_type, 0, page, mountdata);
		if (!FUNC2(mnt))
			break;
	}
	FUNC3(mountdata->addr);
	return mnt;
}