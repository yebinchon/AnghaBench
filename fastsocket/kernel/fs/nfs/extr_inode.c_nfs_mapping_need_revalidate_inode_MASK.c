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
struct inode {int dummy; } ;
struct TYPE_2__ {int cache_validity; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int NFS_INO_REVAL_PAGECACHE ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 

__attribute__((used)) static bool FUNC4(struct inode *inode)
{
	if (FUNC3(inode))
		return false;
	return (FUNC0(inode)->cache_validity & NFS_INO_REVAL_PAGECACHE)
		|| FUNC2(inode)
		|| FUNC1(inode);
}