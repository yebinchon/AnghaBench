#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* specdata2; void* specdata1; } ;
struct TYPE_5__ {TYPE_1__ device; } ;
struct TYPE_6__ {TYPE_2__ u; int /*<<< orphan*/  ftype; } ;
struct nfs4_createdata {TYPE_3__ arg; } ;
struct inode {int dummy; } ;
struct iattr {int ia_mode; int ia_valid; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int ATTR_MODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF4BLK ; 
 int /*<<< orphan*/  NF4CHR ; 
 int /*<<< orphan*/  NF4FIFO ; 
 int /*<<< orphan*/  NF4SOCK ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct nfs4_createdata* FUNC7 (struct inode*,int /*<<< orphan*/ *,struct iattr*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,struct dentry*,struct nfs4_createdata*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs4_createdata*) ; 

__attribute__((used)) static int FUNC10(struct inode *dir, struct dentry *dentry,
		struct iattr *sattr, dev_t rdev)
{
	struct nfs4_createdata *data;
	int mode = sattr->ia_mode;
	int status = -ENOMEM;

	FUNC0(!(sattr->ia_valid & ATTR_MODE));
	FUNC0(!FUNC5(mode) && !FUNC3(mode) && !FUNC4(mode) && !FUNC6(mode));

	data = FUNC7(dir, &dentry->d_name, sattr, NF4SOCK);
	if (data == NULL)
		goto out;

	if (FUNC5(mode))
		data->arg.ftype = NF4FIFO;
	else if (FUNC3(mode)) {
		data->arg.ftype = NF4BLK;
		data->arg.u.device.specdata1 = FUNC1(rdev);
		data->arg.u.device.specdata2 = FUNC2(rdev);
	}
	else if (FUNC4(mode)) {
		data->arg.ftype = NF4CHR;
		data->arg.u.device.specdata1 = FUNC1(rdev);
		data->arg.u.device.specdata2 = FUNC2(rdev);
	}
	
	status = FUNC8(dir, dentry, data);

	FUNC9(data);
out:
	return status;
}