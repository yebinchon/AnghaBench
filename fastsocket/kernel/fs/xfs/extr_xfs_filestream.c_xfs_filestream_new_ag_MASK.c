#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_mru_cache_t ;
struct TYPE_24__ {int sb_agcount; } ;
struct TYPE_25__ {TYPE_1__ m_sb; int /*<<< orphan*/ * m_filestream; } ;
typedef  TYPE_2__ xfs_mount_t ;
struct TYPE_26__ {int /*<<< orphan*/  i_ino; TYPE_2__* i_mount; } ;
typedef  TYPE_3__ xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_extlen_t ;
struct TYPE_27__ {scalar_t__ low; scalar_t__ userdata; int /*<<< orphan*/  alen; TYPE_3__* ip; } ;
typedef  TYPE_4__ xfs_bmalloca_t ;
typedef  int xfs_agnumber_t ;
struct TYPE_28__ {int ag; TYPE_3__* ip; TYPE_3__* pip; } ;
typedef  TYPE_5__ fstrm_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NULLAGNUMBER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*,TYPE_3__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*,int) ; 
 int XFS_IOLOCK_EXCL ; 
 int XFS_IOLOCK_PARENT ; 
 int XFS_PICK_LOWSPACE ; 
 int XFS_PICK_USERDATA ; 
 int FUNC3 (TYPE_2__*,int,int*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*) ; 
 TYPE_5__* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC15(
	xfs_bmalloca_t	*ap,
	xfs_agnumber_t	*agp)
{
	int		flags, err;
	xfs_inode_t	*ip, *pip = NULL;
	xfs_mount_t	*mp;
	xfs_mru_cache_t	*cache;
	xfs_extlen_t	minlen;
	fstrm_item_t	*dir, *file;
	xfs_agnumber_t	ag = NULLAGNUMBER;

	ip = ap->ip;
	mp = ip->i_mount;
	cache = mp->m_filestream;
	minlen = ap->alen;
	*agp = NULLAGNUMBER;

	/*
	 * Look for the file in the cache, removing it if it's found.  Doing
	 * this allows it to be held across the dir lookup that follows.
	 */
	file = FUNC14(cache, ip->i_ino);
	if (file) {
		FUNC0(ip == file->ip);

		/* Save the file's parent inode and old AG number for later. */
		pip = file->pip;
		ag = file->ag;

		/* Look for the file's directory in the cache. */
		dir = FUNC13(cache, pip->i_ino);
		if (dir) {
			FUNC0(pip == dir->ip);

			/*
			 * If the directory has already moved on to a new AG,
			 * use that AG as the new AG for the file. Don't
			 * forget to twiddle the AG refcounts to match the
			 * movement.
			 */
			if (dir->ag != file->ag) {
				FUNC7(mp, file->ag);
				FUNC5(mp, dir->ag);
				*agp = file->ag = dir->ag;
			}

			FUNC11(cache);
		}

		/*
		 * Put the file back in the cache.  If this fails, the free
		 * function needs to be called to tidy up in the same way as if
		 * the item had simply expired from the cache.
		 */
		err = FUNC12(cache, ip->i_ino, file);
		if (err) {
			FUNC8(ip->i_ino, file);
			return err;
		}

		/*
		 * If the file's AG was moved to the directory's new AG, there's
		 * nothing more to be done.
		 */
		if (*agp != NULLAGNUMBER) {
			FUNC1(mp, ip, pip,
					ag, FUNC6(mp, ag),
					*agp, FUNC6(mp, *agp));
			return 0;
		}
	}

	/*
	 * If the file's parent directory is known, take its iolock in exclusive
	 * mode to prevent two sibling files from racing each other to migrate
	 * themselves and their parent to different AGs.
	 *
	 * Note that we lock the parent directory iolock inside the child
	 * iolock here.  That's fine as we never hold both parent and child
	 * iolock in any other place.  This is different from the ilock,
	 * which requires locking of the child after the parent for namespace
	 * operations.
	 */
	if (pip)
		FUNC9(pip, XFS_IOLOCK_EXCL | XFS_IOLOCK_PARENT);

	/*
	 * A new AG needs to be found for the file.  If the file's parent
	 * directory is also known, it will be moved to the new AG as well to
	 * ensure that files created inside it in future use the new AG.
	 */
	ag = (ag == NULLAGNUMBER) ? 0 : (ag + 1) % mp->m_sb.sb_agcount;
	flags = (ap->userdata ? XFS_PICK_USERDATA : 0) |
	        (ap->low ? XFS_PICK_LOWSPACE : 0);

	err = FUNC3(mp, ag, agp, flags, minlen);
	if (err || *agp == NULLAGNUMBER)
		goto exit;

	/*
	 * If the file wasn't found in the file cache, then its parent directory
	 * inode isn't known.  For this to have happened, the file must either
	 * be pre-existing, or it was created long enough ago that its cache
	 * entry has expired.  This isn't the sort of usage that the filestreams
	 * allocator is trying to optimise, so there's no point trying to track
	 * its new AG somehow in the filestream data structures.
	 */
	if (!pip) {
		FUNC2(mp, ip, *agp);
		goto exit;
	}

	/* Associate the parent inode with the AG. */
	err = FUNC4(pip, NULL, *agp);
	if (err)
		goto exit;

	/* Associate the file inode with the AG. */
	err = FUNC4(ip, pip, *agp);
	if (err)
		goto exit;

	FUNC1(mp, ip, pip, NULLAGNUMBER, 0,
			*agp, FUNC6(mp, *agp));

exit:
	/*
	 * If _xfs_filestream_pick_ag() returned a valid AG, remove the
	 * reference it took on it, since the file and directory will have taken
	 * their own now if they were successfully cached.
	 */
	if (*agp != NULLAGNUMBER)
		FUNC7(mp, *agp);
	else
		*agp = 0;

	if (pip)
		FUNC10(pip, XFS_IOLOCK_EXCL);

	return err;
}