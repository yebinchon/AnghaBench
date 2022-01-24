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
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct raparms {int p_set; size_t p_hindex; int /*<<< orphan*/  p_count; int /*<<< orphan*/  p_ra; } ;
struct raparm_hbucket {int /*<<< orphan*/  pb_lock; } ;
struct kvec {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; TYPE_3__* i_sb; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {int /*<<< orphan*/  f_ra; TYPE_2__ f_path; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  scalar_t__ __be32 ;
struct TYPE_6__ {int /*<<< orphan*/  s_dev; } ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSD_MAY_READ ; 
 int /*<<< orphan*/  S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 struct raparms* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file**) ; 
 scalar_t__ FUNC3 (struct svc_rqst*,struct svc_fh*,struct file*,int /*<<< orphan*/ ,struct kvec*,int,unsigned long*) ; 
 struct raparm_hbucket* raparm_hash ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__be32 FUNC6(struct svc_rqst *rqstp, struct svc_fh *fhp,
	loff_t offset, struct kvec *vec, int vlen, unsigned long *count)
{
	struct file *file;
	struct inode *inode;
	struct raparms	*ra;
	__be32 err;

	err = FUNC2(rqstp, fhp, S_IFREG, NFSD_MAY_READ, &file);
	if (err)
		return err;

	inode = file->f_path.dentry->d_inode;

	/* Get readahead parameters */
	ra = FUNC1(inode->i_sb->s_dev, inode->i_ino);

	if (ra && ra->p_set)
		file->f_ra = ra->p_ra;

	err = FUNC3(rqstp, fhp, file, offset, vec, vlen, count);

	/* Write back readahead params */
	if (ra) {
		struct raparm_hbucket *rab = &raparm_hash[ra->p_hindex];
		FUNC4(&rab->pb_lock);
		ra->p_ra = file->f_ra;
		ra->p_set = 1;
		ra->p_count--;
		FUNC5(&rab->pb_lock);
	}

	FUNC0(file);
	return err;
}