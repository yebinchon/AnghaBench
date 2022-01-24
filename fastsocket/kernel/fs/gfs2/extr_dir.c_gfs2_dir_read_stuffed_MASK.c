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
typedef  scalar_t__ u64 ;
struct gfs2_inode {int dummy; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int FUNC1 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct gfs2_inode *ip, char *buf,
				 u64 offset, unsigned int size)
{
	struct buffer_head *dibh;
	int error;

	error = FUNC1(ip, &dibh);
	if (!error) {
		offset += sizeof(struct gfs2_dinode);
		FUNC2(buf, dibh->b_data + offset, size);
		FUNC0(dibh);
	}

	return (error) ? error : size;
}