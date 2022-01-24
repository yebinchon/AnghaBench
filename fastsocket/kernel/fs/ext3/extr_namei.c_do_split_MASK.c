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
typedef  scalar_t__ u32 ;
struct inode {TYPE_1__* i_sb; } ;
struct ext3_dir_entry_2 {void* rec_len; } ;
struct dx_map_entry {int size; scalar_t__ hash; } ;
struct dx_hash_info {scalar_t__ hash; } ;
struct dx_frame {int /*<<< orphan*/  entries; struct buffer_head* bh; int /*<<< orphan*/  at; } ;
struct buffer_head {char* b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {unsigned int s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dx_frame*,scalar_t__,scalar_t__) ; 
 unsigned int FUNC4 (struct ext3_dir_entry_2*,unsigned int,struct dx_hash_info*,struct dx_map_entry*) ; 
 struct ext3_dir_entry_2* FUNC5 (char*,char*,struct dx_map_entry*,unsigned int) ; 
 struct ext3_dir_entry_2* FUNC6 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dx_hash_info*,struct ext3_dir_entry_2*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct dx_map_entry*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC11 (int /*<<< orphan*/ *,struct inode*,scalar_t__*,int*) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 void* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,scalar_t__,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*,struct buffer_head*) ; 

__attribute__((used)) static struct ext3_dir_entry_2 *FUNC18(handle_t *handle, struct inode *dir,
			struct buffer_head **bh,struct dx_frame *frame,
			struct dx_hash_info *hinfo, int *error)
{
	unsigned blocksize = dir->i_sb->s_blocksize;
	unsigned count, continued;
	struct buffer_head *bh2;
	u32 newblock;
	u32 hash2;
	struct dx_map_entry *map;
	char *data1 = (*bh)->b_data, *data2;
	unsigned split, move, size;
	struct ext3_dir_entry_2 *de = NULL, *de2;
	int	err = 0, i;

	bh2 = FUNC11 (handle, dir, &newblock, &err);
	if (!(bh2)) {
		FUNC1(*bh);
		*bh = NULL;
		goto errout;
	}

	FUNC0(*bh, "get_write_access");
	err = FUNC13(handle, *bh);
	if (err)
		goto journal_error;

	FUNC0(frame->bh, "get_write_access");
	err = FUNC13(handle, frame->bh);
	if (err)
		goto journal_error;

	data2 = bh2->b_data;

	/* create map in the end of data2 block */
	map = (struct dx_map_entry *) (data2 + blocksize);
	count = FUNC4 ((struct ext3_dir_entry_2 *) data1,
			     blocksize, hinfo, map);
	map -= count;
	FUNC9 (map, count);
	/* Split the existing block in the middle, size-wise */
	size = 0;
	move = 0;
	for (i = count-1; i >= 0; i--) {
		/* is more than half of this entry in 2nd half of the block? */
		if (size + map[i].size/2 > blocksize/2)
			break;
		size += map[i].size;
		move++;
	}
	/* map index at which we will split */
	split = count - move;
	hash2 = map[split].hash;
	continued = hash2 == map[split - 1].hash;
	FUNC10(FUNC16("Split block %i at %x, %i/%i\n",
		FUNC2(frame->at), hash2, split, count-split));

	/* Fancy dance to stay within two buffers */
	de2 = FUNC5(data1, data2, map + split, count - split);
	de = FUNC6(data1,blocksize);
	de->rec_len = FUNC14(data1 + blocksize - (char *) de);
	de2->rec_len = FUNC14(data2 + blocksize - (char *) de2);
	FUNC10(FUNC8 (hinfo, (struct ext3_dir_entry_2 *) data1, blocksize, 1));
	FUNC10(FUNC8 (hinfo, (struct ext3_dir_entry_2 *) data2, blocksize, 1));

	/* Which block gets the new entry? */
	if (hinfo->hash >= hash2)
	{
		FUNC17(*bh, bh2);
		de = de2;
	}
	FUNC3 (frame, hash2 + continued, newblock);
	err = FUNC12 (handle, bh2);
	if (err)
		goto journal_error;
	err = FUNC12 (handle, frame->bh);
	if (err)
		goto journal_error;
	FUNC1 (bh2);
	FUNC10(FUNC7 ("frame", frame->entries));
	return de;

journal_error:
	FUNC1(*bh);
	FUNC1(bh2);
	*bh = NULL;
	FUNC15(dir->i_sb, err);
errout:
	*error = err;
	return NULL;
}