#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_4__* i_afp; } ;
typedef  TYPE_3__ xfs_inode_t ;
struct TYPE_18__ {char* if_data; } ;
struct TYPE_21__ {TYPE_1__ if_u1; } ;
typedef  TYPE_4__ xfs_ifork_t ;
typedef  int /*<<< orphan*/  xfs_dabuf_t ;
typedef  scalar_t__ xfs_dablk_t ;
struct TYPE_22__ {size_t namelen; int /*<<< orphan*/  flags; int /*<<< orphan*/  hashval; int /*<<< orphan*/  valuelen; int /*<<< orphan*/ * value; int /*<<< orphan*/ * name; int /*<<< orphan*/  op_flags; int /*<<< orphan*/  trans; int /*<<< orphan*/  whichfork; int /*<<< orphan*/  total; int /*<<< orphan*/  flist; int /*<<< orphan*/  firstblock; TYPE_3__* dp; } ;
typedef  TYPE_5__ xfs_da_args_t ;
struct TYPE_19__ {int count; int /*<<< orphan*/  totsize; } ;
struct TYPE_23__ {TYPE_2__ hdr; TYPE_7__* list; } ;
typedef  TYPE_6__ xfs_attr_shortform_t ;
struct TYPE_24__ {size_t namelen; int /*<<< orphan*/  flags; int /*<<< orphan*/ * nameval; int /*<<< orphan*/  valuelen; } ;
typedef  TYPE_7__ xfs_attr_sf_entry_t ;
typedef  int /*<<< orphan*/  nargs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOATTR ; 
 int ENOSPC ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  XFS_DA_OP_OKNOENT ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int FUNC10 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ **) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_5__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC15 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 

int
FUNC17(xfs_da_args_t *args)
{
	xfs_inode_t *dp;
	xfs_attr_shortform_t *sf;
	xfs_attr_sf_entry_t *sfe;
	xfs_da_args_t nargs;
	char *tmpbuffer;
	int error, i, size;
	xfs_dablk_t blkno;
	xfs_dabuf_t *bp;
	xfs_ifork_t *ifp;

	FUNC8(args);

	dp = args->dp;
	ifp = dp->i_afp;
	sf = (xfs_attr_shortform_t *)ifp->if_u1.if_data;
	size = FUNC3(sf->hdr.totsize);
	tmpbuffer = FUNC4(size, KM_SLEEP);
	FUNC0(tmpbuffer != NULL);
	FUNC6(tmpbuffer, ifp->if_u1.if_data, size);
	sf = (xfs_attr_shortform_t *)tmpbuffer;

	FUNC16(dp, -size, XFS_ATTR_FORK);
	bp = NULL;
	error = FUNC13(args, &blkno);
	if (error) {
		/*
		 * If we hit an IO error middle of the transaction inside
		 * grow_inode(), we may have inconsistent data. Bail out.
		 */
		if (error == EIO)
			goto out;
		FUNC16(dp, size, XFS_ATTR_FORK);	/* try to put */
		FUNC6(ifp->if_u1.if_data, tmpbuffer, size);	/* it back */
		goto out;
	}

	FUNC0(blkno == 0);
	error = FUNC10(args, blkno, &bp);
	if (error) {
		error = FUNC15(args, 0, bp);
		bp = NULL;
		if (error)
			goto out;
		FUNC16(dp, size, XFS_ATTR_FORK);	/* try to put */
		FUNC6(ifp->if_u1.if_data, tmpbuffer, size);	/* it back */
		goto out;
	}

	FUNC7((char *)&nargs, 0, sizeof(nargs));
	nargs.dp = dp;
	nargs.firstblock = args->firstblock;
	nargs.flist = args->flist;
	nargs.total = args->total;
	nargs.whichfork = XFS_ATTR_FORK;
	nargs.trans = args->trans;
	nargs.op_flags = XFS_DA_OP_OKNOENT;

	sfe = &sf->list[0];
	for (i = 0; i < sf->hdr.count; i++) {
		nargs.name = sfe->nameval;
		nargs.namelen = sfe->namelen;
		nargs.value = &sfe->nameval[nargs.namelen];
		nargs.valuelen = sfe->valuelen;
		nargs.hashval = FUNC14(sfe->nameval,
						sfe->namelen);
		nargs.flags = FUNC1(sfe->flags);
		error = FUNC11(bp, &nargs); /* set a->index */
		FUNC0(error == ENOATTR);
		error = FUNC9(bp, &nargs);
		FUNC0(error != ENOSPC);
		if (error)
			goto out;
		sfe = FUNC2(sfe);
	}
	error = 0;

out:
	if(bp)
		FUNC12(bp);
	FUNC5(tmpbuffer);
	return(error);
}