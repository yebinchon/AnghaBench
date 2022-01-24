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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {char* name; int len; } ;
struct dentry {int /*<<< orphan*/  d_inode; TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC6(struct inode *dir, struct dentry *de)
{
        int error;
	const char *name = de->d_name.name;
	int len = de->d_name.len;

	FUNC3();

	error = FUNC5(dir->i_sb, FUNC1(dir), name, len);
	if ( error ) {
		FUNC4();
		return error;
	}

	FUNC0(dir);
	FUNC2(de->d_inode);
	FUNC4();
	return 0;
}