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
struct reiserfs_transaction_handle {int /*<<< orphan*/  t_trans_id; struct super_block* t_super; } ;
struct reiserfs_super_block {int dummy; } ;
typedef  scalar_t__ __u32 ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 struct reiserfs_super_block* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,scalar_t__*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct reiserfs_transaction_handle*,struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  leaked_oid ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,scalar_t__*,int) ; 
 scalar_t__* FUNC11 (struct super_block*,struct reiserfs_super_block*) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct reiserfs_super_block*) ; 
 int FUNC15 (struct reiserfs_super_block*) ; 
 int /*<<< orphan*/  FUNC16 (struct reiserfs_super_block*,int) ; 

void FUNC17(struct reiserfs_transaction_handle *th,
			       __u32 objectid_to_release)
{
	struct super_block *s = th->t_super;
	struct reiserfs_super_block *rs = FUNC4(s);
	__le32 *map = FUNC11(s, rs);
	int i = 0;

	FUNC0(!th->t_trans_id);
	//return;
	FUNC5(s, map);

	FUNC13(s, FUNC3(s), 1);
	FUNC7(th, s, FUNC3(s));

	/* start at the beginning of the objectid map (i = 0) and go to
	   the end of it (i = disk_sb->s_oid_cursize).  Linear search is
	   what we use, though it is possible that binary search would be
	   more efficient after performing lots of deletions (which is
	   when oids is large.)  We only check even i's. */
	while (i < FUNC14(rs)) {
		if (objectid_to_release == FUNC9(map[i])) {
			/* This incrementation unallocates the objectid. */
			//map[i]++;
			FUNC8(&map[i], 1);

			/* Did we unallocate the last member of an odd sequence, and can shrink oids? */
			if (map[i] == map[i + 1]) {
				/* shrink objectid map */
				FUNC10(map + i, map + i + 2,
					(FUNC14(rs) - i -
					 2) * sizeof(__u32));
				//disk_sb->s_oid_cursize -= 2;
				FUNC16(rs, FUNC14(rs) - 2);

				FUNC2(FUNC14(rs) < 2 ||
				       FUNC14(rs) > FUNC15(rs),
				       "vs-15005: objectid map corrupted cur_size == %d (max == %d)",
				       FUNC14(rs), FUNC15(rs));
			}
			return;
		}

		if (objectid_to_release > FUNC9(map[i]) &&
		    objectid_to_release < FUNC9(map[i + 1])) {
			/* size of objectid map is not changed */
			if (objectid_to_release + 1 == FUNC9(map[i + 1])) {
				//objectid_map[i+1]--;
				FUNC8(&map[i + 1], -1);
				return;
			}

			/* JDM comparing two little-endian values for equality -- safe */
			if (FUNC14(rs) == FUNC15(rs)) {
				/* objectid map must be expanded, but there is no space */
				FUNC1(s, leaked_oid);
				return;
			}

			/* expand the objectid map */
			FUNC10(map + i + 3, map + i + 1,
				(FUNC14(rs) - i - 1) * sizeof(__u32));
			map[i + 1] = FUNC6(objectid_to_release);
			map[i + 2] = FUNC6(objectid_to_release + 1);
			FUNC16(rs, FUNC14(rs) + 2);
			return;
		}
		i += 2;
	}

	FUNC12(s, "vs-15011", "tried to free free object id (%lu)",
		       (long unsigned)objectid_to_release);
}