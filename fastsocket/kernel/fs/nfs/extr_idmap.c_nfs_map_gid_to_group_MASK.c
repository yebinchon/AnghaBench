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
struct nfs_server {int caps; TYPE_1__* nfs_client; } ;
struct idmap {int /*<<< orphan*/  idmap_group_hash; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_2__ {struct idmap* cl_idmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int NFS_CAP_UIDGID_NOMAP ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,char*,size_t) ; 
 int FUNC1 (struct idmap*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 

int FUNC3(const struct nfs_server *server, __u32 gid, char *buf, size_t buflen)
{
	struct idmap *idmap = server->nfs_client->cl_idmap;
	int ret = -EINVAL;

	if (!(server->caps & NFS_CAP_UIDGID_NOMAP)) {
		ret = FUNC0(gid, "group", buf, buflen);
		if (ret < 0)
			ret = FUNC1(idmap, &idmap->idmap_group_hash, gid, buf);
	}
	if (ret < 0)
		ret = FUNC2(gid, buf, buflen);
	return ret;
}