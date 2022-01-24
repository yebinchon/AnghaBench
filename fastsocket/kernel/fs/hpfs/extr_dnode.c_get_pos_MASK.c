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
struct hpfs_dirent {int dummy; } ;
struct dnode {scalar_t__ self; } ;
typedef  int loff_t ;

/* Variables and functions */
 struct hpfs_dirent* FUNC0 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC1 (struct dnode*) ; 
 struct hpfs_dirent* FUNC2 (struct dnode*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static loff_t FUNC4(struct dnode *d, struct hpfs_dirent *fde)
{
	struct hpfs_dirent *de;
	struct hpfs_dirent *de_end = FUNC1(d);
	int i = 1;
	for (de = FUNC2(d); de < de_end; de = FUNC0(de)) {
		if (de == fde) return ((loff_t) d->self << 4) | (loff_t)i;
		i++;
	}
	FUNC3("HPFS: get_pos: not_found\n");
	return ((loff_t)d->self << 4) | (loff_t)1;
}