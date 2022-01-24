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
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  XATTR_USER ; 
 char const* XATTR_USER_PREFIX ; 
 size_t XATTR_USER_PREFIX_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC2(struct inode *inode, char *list, size_t list_size,
		     const char *name, size_t name_len)
{
	const size_t prefix_len = XATTR_USER_PREFIX_LEN;
	const size_t total_len = prefix_len + name_len + 1;

	if (!FUNC1(inode->i_sb, XATTR_USER))
		return 0;

	if (list && total_len <= list_size) {
		FUNC0(list, XATTR_USER_PREFIX, prefix_len);
		FUNC0(list+prefix_len, name, name_len);
		list[prefix_len + name_len] = '\0';
	}
	return total_len;
}