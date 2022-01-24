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
struct ocfs2_xattr_entry {int dummy; } ;

/* Variables and functions */
 size_t OCFS2_XATTR_INLINE_SIZE ; 
 int OCFS2_XATTR_ROOT_SIZE ; 
 int FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(int name_len, size_t value_len)
{
	int size = 0;

	if (value_len <= OCFS2_XATTR_INLINE_SIZE)
		size = FUNC0(name_len) + FUNC0(value_len);
	else
		size = FUNC0(name_len) + OCFS2_XATTR_ROOT_SIZE;
	size += sizeof(struct ocfs2_xattr_entry);

	return size;
}