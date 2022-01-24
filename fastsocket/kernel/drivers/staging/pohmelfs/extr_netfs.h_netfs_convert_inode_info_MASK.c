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
struct netfs_inode_info {void* ino; void* version; void* size; void* rdev; void* blocks; void* blocksize; void* gid; void* uid; void* nlink; void* mode; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 

__attribute__((used)) static inline void FUNC2(struct netfs_inode_info *info)
{
	info->mode = FUNC0(info->mode);
	info->nlink = FUNC0(info->nlink);
	info->uid = FUNC0(info->uid);
	info->gid = FUNC0(info->gid);
	info->blocksize = FUNC0(info->blocksize);
	info->blocks = FUNC1(info->blocks);
	info->rdev = FUNC1(info->rdev);
	info->size = FUNC1(info->size);
	info->version = FUNC1(info->version);
	info->ino = FUNC1(info->ino);
}