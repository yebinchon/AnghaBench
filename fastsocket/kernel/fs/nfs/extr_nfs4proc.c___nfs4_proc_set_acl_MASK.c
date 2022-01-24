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
struct rpc_message {struct nfs_setaclres* rpc_resp; struct nfs_setaclargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct page {int dummy; } ;
struct nfs_setaclres {int /*<<< orphan*/  seq_res; } ;
struct nfs_setaclargs {size_t acl_len; int /*<<< orphan*/  seq_args; int /*<<< orphan*/  acl_pgbase; struct page** acl_pages; int /*<<< orphan*/  fh; } ;
struct nfs_server {int /*<<< orphan*/  client; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  cache_validity; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct page**) ; 
 unsigned int FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int EOPNOTSUPP ; 
 int ERANGE ; 
 int NFS4ACL_MAXPAGES ; 
 size_t NFSPROC4_CLNT_SETACL ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 TYPE_1__* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_INVALID_ATTR ; 
 struct nfs_server* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC5 (void const*,size_t,struct page**,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct nfs_server*,struct rpc_message*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_server*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct inode *inode, const void *buf, size_t buflen)
{
	struct nfs_server *server = FUNC4(inode);
	struct page *pages[NFS4ACL_MAXPAGES];
	struct nfs_setaclargs arg = {
		.fh		= FUNC2(inode),
		.acl_pages	= pages,
		.acl_len	= buflen,
	};
	struct nfs_setaclres res;
	struct rpc_message msg = {
		.rpc_proc	= &nfs4_procedures[NFSPROC4_CLNT_SETACL],
		.rpc_argp	= &arg,
		.rpc_resp	= &res,
	};
	unsigned int npages = FUNC1(buflen, PAGE_SIZE);
	int ret, i;

	if (!FUNC7(server))
		return -EOPNOTSUPP;
	if (npages > FUNC0(pages))
		return -ERANGE;
	i = FUNC5(buf, buflen, arg.acl_pages, &arg.acl_pgbase);
	if (i < 0)
		return i;
	FUNC9(inode);
	ret = FUNC6(server->client, server, &msg, &arg.seq_args, &res.seq_res, 1);

	/*
	 * Free each page after tx, so the only ref left is
	 * held by the network stack
	 */
	for (; i > 0; i--)
		FUNC11(pages[i-1]);

	/*
	 * Acl update can result in inode attribute update.
	 * so mark the attribute cache invalid.
	 */
	FUNC12(&inode->i_lock);
	FUNC3(inode)->cache_validity |= NFS_INO_INVALID_ATTR;
	FUNC13(&inode->i_lock);
	FUNC8(inode);
	FUNC10(inode);
	return ret;
}