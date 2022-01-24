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

/* Variables and functions */
 char const* XATTR_SECURITY_PREFIX ; 
 int XATTR_SECURITY_PREFIX_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int const) ; 

__attribute__((used)) static size_t
FUNC1(struct inode *inode, char *list, size_t list_size,
			 const char *name, size_t name_len)
{
	const int prefix_len = XATTR_SECURITY_PREFIX_LEN;
	const size_t total_len = prefix_len + name_len + 1;

	if (list && total_len <= list_size) {
		FUNC0(list, XATTR_SECURITY_PREFIX, prefix_len);
		FUNC0(list+prefix_len, name, name_len);
		list[prefix_len + name_len] = '\0';
	}
	return total_len;
}