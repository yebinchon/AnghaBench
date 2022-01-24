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
struct qstr {unsigned char* name; scalar_t__ len; } ;
struct fat_mount_options {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct TYPE_2__ {struct fat_mount_options options; } ;

/* Variables and functions */
 int MSDOS_NAME ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned char*,unsigned char*,int) ; 
 int FUNC2 (unsigned char*,scalar_t__,unsigned char*,struct fat_mount_options*) ; 

__attribute__((used)) static int FUNC3(struct dentry *dentry, struct qstr *a, struct qstr *b)
{
	struct fat_mount_options *options = &FUNC0(dentry->d_sb)->options;
	unsigned char a_msdos_name[MSDOS_NAME], b_msdos_name[MSDOS_NAME];
	int error;

	error = FUNC2(a->name, a->len, a_msdos_name, options);
	if (error)
		goto old_compare;
	error = FUNC2(b->name, b->len, b_msdos_name, options);
	if (error)
		goto old_compare;
	error = FUNC1(a_msdos_name, b_msdos_name, MSDOS_NAME);
out:
	return error;

old_compare:
	error = 1;
	if (a->len == b->len)
		error = FUNC1(a->name, b->name, a->len);
	goto out;
}