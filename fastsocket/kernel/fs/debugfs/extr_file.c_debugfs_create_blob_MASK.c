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
struct dentry {int dummy; } ;
struct debugfs_blob_wrapper {int dummy; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 struct dentry* FUNC0 (char const*,int /*<<< orphan*/ ,struct dentry*,struct debugfs_blob_wrapper*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fops_blob ; 

struct dentry *FUNC1(const char *name, mode_t mode,
				   struct dentry *parent,
				   struct debugfs_blob_wrapper *blob)
{
	return FUNC0(name, mode, parent, blob, &fops_blob);
}