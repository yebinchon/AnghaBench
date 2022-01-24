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
struct super_block {int s_time_gran; struct dentry* s_root; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; int /*<<< orphan*/  s_blocksize_bits; int /*<<< orphan*/  s_blocksize; } ;
struct inode {int /*<<< orphan*/ * i_op; } ;
struct dev_data {int /*<<< orphan*/  dentry; struct super_block* sb; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHIP ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ESRCH ; 
 int /*<<< orphan*/  GADGETFS_MAGIC ; 
 int /*<<< orphan*/  PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 int S_IFDIR ; 
 int S_IRUGO ; 
 int S_IXUGO ; 
 struct dentry* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  dev_init_operations ; 
 struct dev_data* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  gadget_fs_operations ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ,struct dev_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct inode* FUNC4 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  probe_driver ; 
 int /*<<< orphan*/  FUNC6 (struct dev_data*) ; 
 int /*<<< orphan*/  simple_dir_inode_operations ; 
 int /*<<< orphan*/  simple_dir_operations ; 
 struct dev_data* the_device ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8 (struct super_block *sb, void *opts, int silent)
{
	struct inode	*inode;
	struct dentry	*d;
	struct dev_data	*dev;

	if (the_device)
		return -ESRCH;

	/* fake probe to determine $CHIP */
	(void) FUNC7 (&probe_driver);
	if (!CHIP)
		return -ENODEV;

	/* superblock */
	sb->s_blocksize = PAGE_CACHE_SIZE;
	sb->s_blocksize_bits = PAGE_CACHE_SHIFT;
	sb->s_magic = GADGETFS_MAGIC;
	sb->s_op = &gadget_fs_operations;
	sb->s_time_gran = 1;

	/* root inode */
	inode = FUNC4 (sb,
			NULL, &simple_dir_operations,
			S_IFDIR | S_IRUGO | S_IXUGO);
	if (!inode)
		goto enomem0;
	inode->i_op = &simple_dir_inode_operations;
	if (!(d = FUNC0 (inode)))
		goto enomem1;
	sb->s_root = d;

	/* the ep0 file is named after the controller we expect;
	 * user mode code can use it for sanity checks, like we do.
	 */
	dev = FUNC1 ();
	if (!dev)
		goto enomem2;

	dev->sb = sb;
	if (!FUNC3 (sb, CHIP,
				dev, &dev_init_operations,
				&dev->dentry))
		goto enomem3;

	/* other endpoint files are available after hardware setup,
	 * from binding to a controller.
	 */
	the_device = dev;
	return 0;

enomem3:
	FUNC6 (dev);
enomem2:
	FUNC2 (d);
enomem1:
	FUNC5 (inode);
enomem0:
	return -ENOMEM;
}