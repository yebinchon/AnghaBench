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
struct super_block {int dummy; } ;
struct hpfs_dirent {unsigned int namelen; int down; unsigned int length; int /*<<< orphan*/  name; int /*<<< orphan*/  not_8x3; int /*<<< orphan*/  last; } ;
struct dnode {unsigned int first_free; int /*<<< orphan*/  self; } ;
typedef  int secno ;

/* Variables and functions */
 struct hpfs_dirent* FUNC0 (struct hpfs_dirent*) ; 
 unsigned int FUNC1 (unsigned int,int) ; 
 struct hpfs_dirent* FUNC2 (struct dnode*) ; 
 struct hpfs_dirent* FUNC3 (struct dnode*) ; 
 int FUNC4 (struct super_block*,unsigned char*,unsigned int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,char*,unsigned char,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct hpfs_dirent*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct hpfs_dirent*,int /*<<< orphan*/ ,unsigned int) ; 

struct hpfs_dirent *FUNC10(struct super_block *s, struct dnode *d, unsigned char *name,
				unsigned namelen, secno down_ptr)
{
	struct hpfs_dirent *de;
	struct hpfs_dirent *de_end = FUNC2(d);
	unsigned d_size = FUNC1(namelen, down_ptr);
	for (de = FUNC3(d); de < de_end; de = FUNC0(de)) {
		int c = FUNC4(s, name, namelen, de->name, de->namelen, de->last);
		if (!c) {
			FUNC5(s, "name (%c,%d) already exists in dnode %08x", *name, namelen, d->self);
			return NULL;
		}
		if (c < 0) break;
	}
	FUNC8((char *)de + d_size, de, (char *)de_end - (char *)de);
	FUNC9(de, 0, d_size);
	if (down_ptr) {
		*(int *)((char *)de + d_size - 4) = down_ptr;
		de->down = 1;
	}
	de->length = d_size;
	if (down_ptr) de->down = 1;
	de->not_8x3 = FUNC6(name, namelen);
	de->namelen = namelen;
	FUNC7(de->name, name, namelen);
	d->first_free += d_size;
	return de;
}