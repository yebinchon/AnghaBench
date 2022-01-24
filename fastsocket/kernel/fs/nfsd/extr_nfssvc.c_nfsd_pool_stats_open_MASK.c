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
struct file {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfsd_mutex ; 
 int /*<<< orphan*/ * nfsd_serv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct file*) ; 

int FUNC4(struct inode *inode, struct file *file)
{
	int ret;
	FUNC0(&nfsd_mutex);
	if (nfsd_serv == NULL) {
		FUNC1(&nfsd_mutex);
		return -ENODEV;
	}
	/* bump up the psudo refcount while traversing */
	FUNC2(nfsd_serv);
	ret = FUNC3(nfsd_serv, file);
	FUNC1(&nfsd_mutex);
	return ret;
}