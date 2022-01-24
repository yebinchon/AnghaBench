#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_mode; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct coda_mount_data {scalar_t__ version; int /*<<< orphan*/  fd; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 scalar_t__ CODA_MOUNT_VERSION ; 
 scalar_t__ CODA_PSDEV_MAJOR ; 
 int MAX_CODADEVS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct file* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct coda_mount_data *data)
{
	struct file *file;
	struct inode *inode;
	int idx;

	if(data == NULL) {
		FUNC5("coda_read_super: Bad mount data\n");
		return -1;
	}

	if(data->version != CODA_MOUNT_VERSION) {
		FUNC5("coda_read_super: Bad mount version\n");
		return -1;
	}

	file = FUNC1(data->fd);
	inode = NULL;
	if(file)
		inode = file->f_path.dentry->d_inode;
	
	if(!inode || !FUNC0(inode->i_mode) ||
	   FUNC3(inode) != CODA_PSDEV_MAJOR) {
		if(file)
			FUNC2(file);

		FUNC5("coda_read_super: Bad file\n");
		return -1;
	}

	idx = FUNC4(inode);
	FUNC2(file);

	if(idx < 0 || idx >= MAX_CODADEVS) {
		FUNC5("coda_read_super: Bad minor number\n");
		return -1;
	}

	return idx;
}