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
struct TYPE_4__ {int /*<<< orphan*/  unique; int /*<<< orphan*/  vnode; int /*<<< orphan*/  name; } ;
union afs_dirent {TYPE_2__ u; } ;
struct TYPE_3__ {unsigned int nentries; int* bitmap; } ;
union afs_dir_block {TYPE_1__ pagehdr; union afs_dirent* dirents; } ;
typedef  int (* filldir_t ) (void*,int /*<<< orphan*/ ,size_t,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;

/* Variables and functions */
 unsigned int AFS_DIRENT_PER_BLOCK ; 
 int /*<<< orphan*/  DT_UNKNOWN ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int,union afs_dir_block*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (void*,int /*<<< orphan*/ ,size_t,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(unsigned *fpos,
				 union afs_dir_block *block,
				 unsigned blkoff,
				 void *cookie,
				 filldir_t filldir)
{
	union afs_dirent *dire;
	unsigned offset, next, curr;
	size_t nlen;
	int tmp, ret;

	FUNC1("%u,%x,%p,,",*fpos,blkoff,block);

	curr = (*fpos - blkoff) / sizeof(union afs_dirent);

	/* walk through the block, an entry at a time */
	for (offset = AFS_DIRENT_PER_BLOCK - block->pagehdr.nentries;
	     offset < AFS_DIRENT_PER_BLOCK;
	     offset = next
	     ) {
		next = offset + 1;

		/* skip entries marked unused in the bitmap */
		if (!(block->pagehdr.bitmap[offset / 8] &
		      (1 << (offset % 8)))) {
			FUNC0("ENT[%Zu.%u]: unused",
			       blkoff / sizeof(union afs_dir_block), offset);
			if (offset >= curr)
				*fpos = blkoff +
					next * sizeof(union afs_dirent);
			continue;
		}

		/* got a valid entry */
		dire = &block->dirents[offset];
		nlen = FUNC5(dire->u.name,
			       sizeof(*block) -
			       offset * sizeof(union afs_dirent));

		FUNC0("ENT[%Zu.%u]: %s %Zu \"%s\"",
		       blkoff / sizeof(union afs_dir_block), offset,
		       (offset < curr ? "skip" : "fill"),
		       nlen, dire->u.name);

		/* work out where the next possible entry is */
		for (tmp = nlen; tmp > 15; tmp -= sizeof(union afs_dirent)) {
			if (next >= AFS_DIRENT_PER_BLOCK) {
				FUNC0("ENT[%Zu.%u]:"
				       " %u travelled beyond end dir block"
				       " (len %u/%Zu)",
				       blkoff / sizeof(union afs_dir_block),
				       offset, next, tmp, nlen);
				return -EIO;
			}
			if (!(block->pagehdr.bitmap[next / 8] &
			      (1 << (next % 8)))) {
				FUNC0("ENT[%Zu.%u]:"
				       " %u unmarked extension (len %u/%Zu)",
				       blkoff / sizeof(union afs_dir_block),
				       offset, next, tmp, nlen);
				return -EIO;
			}

			FUNC0("ENT[%Zu.%u]: ext %u/%Zu",
			       blkoff / sizeof(union afs_dir_block),
			       next, tmp, nlen);
			next++;
		}

		/* skip if starts before the current position */
		if (offset < curr)
			continue;

		/* found the next entry */
		ret = filldir(cookie,
			      dire->u.name,
			      nlen,
			      blkoff + offset * sizeof(union afs_dirent),
			      FUNC4(dire->u.vnode),
			      filldir == afs_lookup_filldir ?
			      FUNC4(dire->u.unique) : DT_UNKNOWN);
		if (ret < 0) {
			FUNC2(" = 0 [full]");
			return 0;
		}

		*fpos = blkoff + next * sizeof(union afs_dirent);
	}

	FUNC2(" = 1 [more]");
	return 1;
}