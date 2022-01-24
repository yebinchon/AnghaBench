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
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/ * d_op; } ;
struct cifs_tcon {scalar_t__ nocase; } ;

/* Variables and functions */
 int /*<<< orphan*/  cifs_ci_dentry_ops ; 
 int /*<<< orphan*/  cifs_dentry_ops ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*,struct inode*) ; 

__attribute__((used)) static void FUNC1(struct cifs_tcon *tcon,
			      struct dentry *direntry,
			      struct inode *newinode)
{
	if (tcon->nocase)
		direntry->d_op = &cifs_ci_dentry_ops;
	else
		direntry->d_op = &cifs_dentry_ops;
	FUNC0(direntry, newinode);
}