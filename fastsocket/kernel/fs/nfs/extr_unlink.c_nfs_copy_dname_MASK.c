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
struct TYPE_5__ {int len; char* name; } ;
struct TYPE_6__ {TYPE_2__ name; } ;
struct nfs_unlinkdata {TYPE_3__ args; } ;
struct TYPE_4__ {int len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct dentry *dentry, struct nfs_unlinkdata *data)
{
	char		*str;
	int		len = dentry->d_name.len;

	str = FUNC1(dentry->d_name.name, FUNC0(len), GFP_KERNEL);
	if (!str)
		return -ENOMEM;
	data->args.name.len = len;
	data->args.name.name = str;
	return 0;
}