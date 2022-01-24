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
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct coda_vattr {int dummy; } ;
struct CodaFid {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ,struct CodaFid*,struct coda_vattr*) ; 
 scalar_t__ FUNC5 (char const*,int) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,int,struct CodaFid*,struct coda_vattr*) ; 

__attribute__((used)) static int FUNC12(struct inode *dir, struct dentry *de, int mode, struct nameidata *nd)
{
        int error=0;
	const char *name=de->d_name.name;
	int length=de->d_name.len;
	struct inode *inode;
	struct CodaFid newfid;
	struct coda_vattr attrs;

	FUNC9();

	if (FUNC6(dir) && FUNC5(name, length)) {
		FUNC10();
		return -EPERM;
	}

	error = FUNC11(dir->i_sb, FUNC3(dir), name, length, 
				0, mode, &newfid, &attrs);

        if ( error ) {
		FUNC10();
		FUNC7(de);
		return error;
	}

	inode = FUNC4(dir->i_sb, &newfid, &attrs);
	if ( FUNC0(inode) ) {
		FUNC10();
		FUNC7(de);
		return FUNC1(inode);
	}

	/* invalidate the directory cnode's attributes */
	FUNC2(dir);
	FUNC10();
	FUNC8(de, inode);
	return 0;
}