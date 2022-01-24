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
struct nfs_server {TYPE_1__* nfs_client; } ;
struct idmap {int /*<<< orphan*/  idmap_user_hash; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_2__ {struct idmap* cl_idmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct idmap*,int /*<<< orphan*/ *,char const*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*,size_t,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,size_t,int /*<<< orphan*/ *) ; 

int FUNC3(const struct nfs_server *server, const char *name, size_t namelen, __u32 *uid)
{
	struct idmap *idmap = server->nfs_client->cl_idmap;
	int ret = -EINVAL;

	if (FUNC2(name, namelen, uid))
		return 0;
	ret = FUNC1(name, namelen, "uid", uid);
	if (ret < 0)
		ret = FUNC0(idmap, &idmap->idmap_user_hash, name, namelen, uid);
	return ret;
}