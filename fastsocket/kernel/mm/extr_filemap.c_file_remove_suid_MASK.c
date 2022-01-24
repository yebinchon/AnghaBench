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
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dentry*,int) ; 
 int FUNC1 (struct dentry*) ; 
 int FUNC2 (struct dentry*) ; 
 int FUNC3 (struct dentry*) ; 

int FUNC4(struct file *file)
{
	struct dentry *dentry = file->f_path.dentry;
	int killsuid = FUNC3(dentry);
	int killpriv = FUNC2(dentry);
	int error = 0;

	if (killpriv < 0)
		return killpriv;
	if (killpriv)
		error = FUNC1(dentry);
	if (!error && killsuid)
		error = FUNC0(dentry, killsuid);

	return error;
}