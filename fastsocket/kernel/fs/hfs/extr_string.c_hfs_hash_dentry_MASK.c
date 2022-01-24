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
struct qstr {unsigned char* name; unsigned int len; int /*<<< orphan*/  hash; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 unsigned int HFS_NAMELEN ; 
 int /*<<< orphan*/ * caseorder ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 () ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

int FUNC3(struct dentry *dentry, struct qstr *this)
{
	const unsigned char *name = this->name;
	unsigned int hash, len = this->len;

	if (len > HFS_NAMELEN)
		len = HFS_NAMELEN;

	hash = FUNC1();
	for (; len; len--)
		hash = FUNC2(caseorder[*name++], hash);
	this->hash = FUNC0(hash);
	return 0;
}