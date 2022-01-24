#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct adfs_discmap {TYPE_1__* dm_bh; } ;
struct TYPE_4__ {int s_map_size; } ;
struct TYPE_3__ {unsigned char* b_data; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct super_block*) ; 
 unsigned char FUNC1 (struct super_block*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,...) ; 

__attribute__((used)) static int FUNC3(struct super_block *sb, struct adfs_discmap *dm)
{
	unsigned char crosscheck = 0, zonecheck = 1;
	int i;

	for (i = 0; i < FUNC0(sb)->s_map_size; i++) {
		unsigned char *map;

		map = dm[i].dm_bh->b_data;

		if (FUNC1(sb, map) != map[0]) {
			FUNC2(sb, "zone %d fails zonecheck", i);
			zonecheck = 0;
		}
		crosscheck ^= map[3];
	}
	if (crosscheck != 0xff)
		FUNC2(sb, "crosscheck != 0xff");
	return crosscheck == 0xff && zonecheck;
}