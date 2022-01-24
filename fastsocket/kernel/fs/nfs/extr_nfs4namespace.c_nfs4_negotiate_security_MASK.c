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
struct qstr {int dummy; } ;
struct page {int dummy; } ;
struct nfs4_secinfo_flavors {int dummy; } ;
struct inode {int dummy; } ;
typedef  int rpc_authflavor_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,struct qstr*,struct nfs4_secinfo_flavors*) ; 
 int FUNC2 (struct nfs4_secinfo_flavors*) ; 
 struct nfs4_secinfo_flavors* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

__attribute__((used)) static rpc_authflavor_t FUNC5(struct inode *inode, struct qstr *name)
{
	struct page *page;
	struct nfs4_secinfo_flavors *flavors;
	rpc_authflavor_t flavor;
	int err;

	page = FUNC0(GFP_KERNEL);
	if (!page)
		return -ENOMEM;
	flavors = FUNC3(page);

	err = FUNC1(inode, name, flavors);
	if (err < 0) {
		flavor = err;
		goto out;
	}

	flavor = FUNC2(flavors);

out:
	FUNC4(page);
	return flavor;
}