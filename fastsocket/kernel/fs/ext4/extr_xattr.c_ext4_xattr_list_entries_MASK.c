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
struct xattr_handler {size_t (* list ) (struct inode*,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct inode {int dummy; } ;
struct ext4_xattr_entry {int /*<<< orphan*/  e_name_len; int /*<<< orphan*/  e_name; int /*<<< orphan*/  e_name_index; } ;

/* Variables and functions */
 int ERANGE ; 
 struct ext4_xattr_entry* FUNC0 (struct ext4_xattr_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct ext4_xattr_entry*) ; 
 struct xattr_handler* FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (struct inode*,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct inode *inode, struct ext4_xattr_entry *entry,
			char *buffer, size_t buffer_size)
{
	size_t rest = buffer_size;

	for (; !FUNC1(entry); entry = FUNC0(entry)) {
		struct xattr_handler *handler =
			FUNC2(entry->e_name_index);

		if (handler) {
			size_t size = handler->list(inode, buffer, rest,
						    entry->e_name,
						    entry->e_name_len);
			if (buffer) {
				if (size > rest)
					return -ERANGE;
				buffer += size;
			}
			rest -= size;
		}
	}
	return buffer_size - rest;
}