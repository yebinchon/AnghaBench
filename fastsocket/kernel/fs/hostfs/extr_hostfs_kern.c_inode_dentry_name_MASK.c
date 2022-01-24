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
struct inode {int dummy; } ;
struct TYPE_2__ {int len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 char* FUNC0 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static char *FUNC4(struct inode *ino, struct dentry *dentry)
{
	char *file;
	int len;

	file = FUNC0(ino, dentry->d_name.len + 1);
	if (file == NULL)
		return NULL;
	FUNC1(file, "/");
	len = FUNC2(file);
	FUNC3(file, dentry->d_name.name, dentry->d_name.len);
	file[len + dentry->d_name.len] = '\0';
	return file;
}