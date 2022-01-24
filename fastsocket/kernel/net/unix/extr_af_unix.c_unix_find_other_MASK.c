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
struct sockaddr_un {scalar_t__* sun_path; } ;
struct sock {int sk_type; } ;
struct path {struct dentry* dentry; int /*<<< orphan*/  mnt; } ;
struct net {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  mnt; struct dentry* dentry; } ;

/* Variables and functions */
 int ECONNREFUSED ; 
 int EPROTOTYPE ; 
 int /*<<< orphan*/  LOOKUP_FOLLOW ; 
 int /*<<< orphan*/  MAY_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__*,int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC3 (struct path*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct dentry*) ; 
 struct sock* FUNC6 (struct inode*) ; 
 struct sock* FUNC7 (struct net*,struct sockaddr_un*,int,int,unsigned int) ; 
 TYPE_1__* FUNC8 (struct sock*) ; 

__attribute__((used)) static struct sock *FUNC9(struct net *net,
				    struct sockaddr_un *sunname, int len,
				    int type, unsigned hash, int *error)
{
	struct sock *u;
	struct path path;
	int err = 0;

	if (sunname->sun_path[0]) {
		struct inode *inode;
		err = FUNC2(sunname->sun_path, LOOKUP_FOLLOW, &path);
		if (err)
			goto fail;
		inode = path.dentry->d_inode;
		err = FUNC1(inode, MAY_WRITE);
		if (err)
			goto put_fail;

		err = -ECONNREFUSED;
		if (!FUNC0(inode->i_mode))
			goto put_fail;
		u = FUNC6(inode);
		if (!u)
			goto put_fail;

		if (u->sk_type == type)
			FUNC5(path.mnt, path.dentry);

		FUNC3(&path);

		err = -EPROTOTYPE;
		if (u->sk_type != type) {
			FUNC4(u);
			goto fail;
		}
	} else {
		err = -ECONNREFUSED;
		u = FUNC7(net, sunname, len, type, hash);
		if (u) {
			struct dentry *dentry;
			dentry = FUNC8(u)->dentry;
			if (dentry)
				FUNC5(FUNC8(u)->mnt, dentry);
		} else
			goto fail;
	}
	return u;

put_fail:
	FUNC3(&path);
fail:
	*error = err;
	return NULL;
}