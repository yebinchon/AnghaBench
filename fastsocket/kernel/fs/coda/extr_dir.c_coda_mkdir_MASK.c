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
struct dentry {TYPE_1__ d_name; } ;
struct coda_vattr {int va_mode; } ;
struct CodaFid {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ,struct CodaFid*,struct coda_vattr*) ; 
 scalar_t__ FUNC6 (char const*,int) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,struct CodaFid*,struct coda_vattr*) ; 

__attribute__((used)) static int FUNC13(struct inode *dir, struct dentry *de, int mode)
{
	struct inode *inode;
	struct coda_vattr attrs;
	const char *name = de->d_name.name;
	int len = de->d_name.len;
	int error;
	struct CodaFid newfid;

	FUNC10();

	if (FUNC7(dir) && FUNC6(name, len)) {
		FUNC11();
		return -EPERM;
	}

	attrs.va_mode = mode;
	error = FUNC12(dir->i_sb, FUNC4(dir), 
			       name, len, &newfid, &attrs);
        
        if ( error ) {
		FUNC11();
		FUNC8(de);
		return error;
        }
         
	inode = FUNC5(dir->i_sb, &newfid, &attrs);
	if ( FUNC0(inode) ) {
		FUNC11();
		FUNC8(de);
		return FUNC1(inode);
	}

	/* invalidate the directory cnode's attributes */
	FUNC2(dir);
	FUNC3(dir);
	FUNC11();
	FUNC9(de, inode);
	return 0;
}