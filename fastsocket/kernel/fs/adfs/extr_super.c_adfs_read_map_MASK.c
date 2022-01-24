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
struct adfs_sb_info {unsigned int s_map_size; unsigned int s_ids_per_zone; int s_idlen; int /*<<< orphan*/  s_map2blk; } ;
struct adfs_discrecord {int log2secsize; int log2bpmb; int /*<<< orphan*/  disc_size; int /*<<< orphan*/  disc_size_high; int /*<<< orphan*/  zone_spare; } ;
struct adfs_discmap {unsigned int dm_startbit; unsigned int dm_endbit; int dm_startblk; int /*<<< orphan*/  dm_bh; } ;

/* Variables and functions */
 unsigned int ADFS_DR_SIZE_BITS ; 
 struct adfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct super_block*,struct adfs_discmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adfs_discmap*) ; 
 struct adfs_discmap* FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,unsigned int) ; 
 unsigned int FUNC9 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct adfs_discmap *FUNC10(struct super_block *sb, struct adfs_discrecord *dr)
{
	struct adfs_discmap *dm;
	unsigned int map_addr, zone_size, nzones;
	int i, zone;
	struct adfs_sb_info *asb = FUNC0(sb);

	nzones    = asb->s_map_size;
	zone_size = (8 << dr->log2secsize) - FUNC6(dr->zone_spare);
	map_addr  = (nzones >> 1) * zone_size -
		     ((nzones > 1) ? ADFS_DR_SIZE_BITS : 0);
	map_addr  = FUNC9(map_addr, asb->s_map2blk);

	asb->s_ids_per_zone = zone_size / (asb->s_idlen + 1);

	dm = FUNC5(nzones * sizeof(*dm), GFP_KERNEL);
	if (dm == NULL) {
		FUNC2(sb, "not enough memory");
		return NULL;
	}

	for (zone = 0; zone < nzones; zone++, map_addr++) {
		dm[zone].dm_startbit = 0;
		dm[zone].dm_endbit   = zone_size;
		dm[zone].dm_startblk = zone * zone_size - ADFS_DR_SIZE_BITS;
		dm[zone].dm_bh       = FUNC8(sb, map_addr);

		if (!dm[zone].dm_bh) {
			FUNC2(sb, "unable to read map");
			goto error_free;
		}
	}

	/* adjust the limits for the first and last map zones */
	i = zone - 1;
	dm[0].dm_startblk = 0;
	dm[0].dm_startbit = ADFS_DR_SIZE_BITS;
	dm[i].dm_endbit   = (FUNC7(dr->disc_size_high) << (32 - dr->log2bpmb)) +
			    (FUNC7(dr->disc_size) >> dr->log2bpmb) +
			    (ADFS_DR_SIZE_BITS - i * zone_size);

	if (FUNC1(sb, dm))
		return dm;

	FUNC2(sb, "map corrupted");

error_free:
	while (--zone >= 0)
		FUNC3(dm[zone].dm_bh);

	FUNC4(dm);
	return NULL;
}