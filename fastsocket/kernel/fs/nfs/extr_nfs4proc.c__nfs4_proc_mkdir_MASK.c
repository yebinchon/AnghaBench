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
struct nfs4_createdata {int dummy; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NF4DIR ; 
 struct nfs4_createdata* FUNC0 (struct inode*,int /*<<< orphan*/ *,struct iattr*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,struct dentry*,struct nfs4_createdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_createdata*) ; 

__attribute__((used)) static int FUNC3(struct inode *dir, struct dentry *dentry,
		struct iattr *sattr)
{
	struct nfs4_createdata *data;
	int status = -ENOMEM;

	data = FUNC0(dir, &dentry->d_name, sattr, NF4DIR);
	if (data == NULL)
		goto out;

	status = FUNC1(dir, dentry, data);

	FUNC2(data);
out:
	return status;
}