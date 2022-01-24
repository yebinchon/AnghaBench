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
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_DEVICE_TYPE_PCM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_DEVICE_TYPE_PCM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct file* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 unsigned int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ snd_major ; 

__attribute__((used)) static struct file *FUNC6(int fd)
{
	struct file *file;
	struct inode *inode;
	unsigned int minor;

	file = FUNC1(fd);
	if (!file)
		return NULL;
	inode = file->f_path.dentry->d_inode;
	if (!FUNC0(inode->i_mode) ||
	    FUNC3(inode) != snd_major) {
		FUNC2(file);
		return NULL;
	}
	minor = FUNC4(inode);
	if (!FUNC5(minor, SNDRV_DEVICE_TYPE_PCM_PLAYBACK) &&
	    !FUNC5(minor, SNDRV_DEVICE_TYPE_PCM_CAPTURE)) {
		FUNC2(file);
		return NULL;
	}
	return file;
}