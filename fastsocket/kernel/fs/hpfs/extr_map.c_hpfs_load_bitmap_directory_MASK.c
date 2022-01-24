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
struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ secno ;
struct TYPE_2__ {int sb_fs_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 scalar_t__* FUNC1 (struct super_block*,scalar_t__,struct buffer_head**,int) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 scalar_t__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

secno *FUNC7(struct super_block *s, secno bmp)
{
	struct buffer_head *bh;
	int n = (FUNC2(s)->sb_fs_size + 0x200000 - 1) >> 21;
	int i;
	secno *b;
	if (!(b = FUNC4(n * 512, GFP_KERNEL))) {
		FUNC6("HPFS: can't allocate memory for bitmap directory\n");
		return NULL;
	}	
	for (i=0;i<n;i++) {
		secno *d = FUNC1(s, bmp+i, &bh, n - i - 1);
		if (!d) {
			FUNC3(b);
			return NULL;
		}
		FUNC5((char *)b + 512 * i, d, 512);
		FUNC0(bh);
	}
	return b;
}