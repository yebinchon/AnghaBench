#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_t ;
struct TYPE_28__ {char* vdev_path; struct TYPE_28__* vdev_top; int /*<<< orphan*/  vdev_id; TYPE_1__* vdev_ops; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  size_t uchar_t ;
struct TYPE_29__ {int /*<<< orphan*/  spa_root_vdev; } ;
typedef  TYPE_3__ spa_t ;
typedef  enum zio_compress { ____Placeholder_zio_compress } zio_compress ;
typedef  int /*<<< orphan*/  dva_t ;
struct TYPE_30__ {int /*<<< orphan*/ * blk_dva; } ;
typedef  TYPE_4__ blkptr_t ;
typedef  int /*<<< orphan*/  abd_t ;
struct TYPE_27__ {char* vdev_op_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  DEV_BSIZE ; 
 int /*<<< orphan*/  DMU_OT_NONE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_STATE ; 
 int SPA_MAXBLOCKSIZE ; 
 scalar_t__ SPA_MINBLOCKSIZE ; 
 int /*<<< orphan*/  TXG_INITIAL ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int ZDB_FLAG_CHECKSUM ; 
 int ZDB_FLAG_DECOMPRESS ; 
 int ZDB_FLAG_GBH ; 
 int ZDB_FLAG_INDIRECT ; 
 int ZDB_FLAG_PRINT_BLKPTR ; 
 int ZDB_FLAG_RAW ; 
 int /*<<< orphan*/  ZFS_HOST_BYTEORDER ; 
 int /*<<< orphan*/  ZIO_CHECKSUM_OFF ; 
 int ZIO_COMPRESS_FUNCTIONS ; 
 int /*<<< orphan*/  ZIO_COMPRESS_OFF ; 
 int ZIO_FLAG_CANFAIL ; 
 int ZIO_FLAG_DONT_CACHE ; 
 int ZIO_FLAG_DONT_PROPAGATE ; 
 int ZIO_FLAG_DONT_QUEUE ; 
 int ZIO_FLAG_DONT_RETRY ; 
 int ZIO_FLAG_OPTIONAL ; 
 int ZIO_FLAG_RAW ; 
 int /*<<< orphan*/  ZIO_PRIORITY_SYNC_READ ; 
 int /*<<< orphan*/  ZIO_TYPE_READ ; 
 int /*<<< orphan*/ * FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (void*,void*,int) ; 
 int* flagbits ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (char*,...) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  random_get_pseudo_bytes_cb ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC28 (char const*) ; 
 char* FUNC29 (char*,char*) ; 
 int FUNC30 (char const*,char**,int) ; 
 void* FUNC31 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (void*,int) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC34 (char*,void*,int,int) ; 
 int /*<<< orphan*/  FUNC35 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC36 (void*,int) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_4__*,int) ; 
 TYPE_2__* FUNC39 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC40 (int,int /*<<< orphan*/ *,void*,int,int) ; 
 scalar_t__ FUNC41 (int,void*,void*,int,int) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC44 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_2__*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC46 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC47(char *thing, spa_t *spa)
{
	blkptr_t blk, *bp = &blk;
	dva_t *dva = bp->blk_dva;
	int flags = 0;
	uint64_t offset = 0, size = 0, psize = 0, lsize = 0, blkptr_offset = 0;
	zio_t *zio;
	vdev_t *vd;
	abd_t *pabd;
	void *lbuf, *buf;
	const char *s, *vdev;
	char *p, *dup, *flagstr;
	int i, error;

	dup = FUNC28(thing);
	s = FUNC29(dup, ":");
	vdev = s ? s : "";
	s = FUNC29(NULL, ":");
	offset = FUNC30(s ? s : "", NULL, 16);
	s = FUNC29(NULL, ":");
	size = FUNC30(s ? s : "", NULL, 16);
	s = FUNC29(NULL, ":");
	if (s)
		flagstr = FUNC28(s);
	else
		flagstr = FUNC28("");

	s = NULL;
	if (size == 0)
		s = "size must not be zero";
	if (!FUNC14(size, DEV_BSIZE))
		s = "size must be a multiple of sector size";
	if (!FUNC14(offset, DEV_BSIZE))
		s = "offset must be a multiple of sector size";
	if (s) {
		(void) FUNC24("Invalid block specifier: %s  - %s\n", thing, s);
		FUNC23(flagstr);
		FUNC23(dup);
		return;
	}

	for (s = FUNC29(flagstr, ":"); s; s = FUNC29(NULL, ":")) {
		for (i = 0; flagstr[i]; i++) {
			int bit = flagbits[(uchar_t)flagstr[i]];

			if (bit == 0) {
				(void) FUNC24("***Invalid flag: %c\n",
				    flagstr[i]);
				continue;
			}
			flags |= bit;

			/* If it's not something with an argument, keep going */
			if ((bit & (ZDB_FLAG_CHECKSUM |
			    ZDB_FLAG_PRINT_BLKPTR)) == 0)
				continue;

			p = &flagstr[i + 1];
			if (bit == ZDB_FLAG_PRINT_BLKPTR)
				blkptr_offset = FUNC30(p, &p, 16);
			if (*p != ':' && *p != '\0') {
				(void) FUNC24("***Invalid flag arg: '%s'\n", s);
				FUNC23(flagstr);
				FUNC23(dup);
				return;
			}
			i += p - &flagstr[i + 1]; /* skip over the number */
		}
	}
	FUNC23(flagstr);

	vd = FUNC39(spa->spa_root_vdev, vdev);
	if (vd == NULL) {
		(void) FUNC24("***Invalid vdev: %s\n", vdev);
		FUNC23(dup);
		return;
	} else {
		if (vd->vdev_path)
			(void) FUNC22(stderr, "Found vdev: %s\n",
			    vd->vdev_path);
		else
			(void) FUNC22(stderr, "Found vdev type: %s\n",
			    vd->vdev_ops->vdev_op_type);
	}

	psize = size;
	lsize = size;

	pabd = FUNC16(SPA_MAXBLOCKSIZE, B_FALSE);
	lbuf = FUNC31(SPA_MAXBLOCKSIZE, UMEM_NOFAIL);

	FUNC9(bp);

	FUNC13(&dva[0], vd->vdev_id);
	FUNC12(&dva[0], offset);
	FUNC11(&dva[0], !!(flags & ZDB_FLAG_GBH));
	FUNC10(&dva[0], FUNC33(vd, psize));

	FUNC0(bp, TXG_INITIAL, TXG_INITIAL);

	FUNC6(bp, lsize);
	FUNC7(bp, psize);
	FUNC3(bp, ZIO_COMPRESS_OFF);
	FUNC2(bp, ZIO_CHECKSUM_OFF);
	FUNC8(bp, DMU_OT_NONE);
	FUNC5(bp, 0);
	FUNC4(bp, 0);
	FUNC1(bp, ZFS_HOST_BYTEORDER);

	FUNC26(spa, SCL_STATE, FTAG, RW_READER);
	zio = FUNC44(spa, NULL, NULL, 0);

	if (vd == vd->vdev_top) {
		/*
		 * Treat this as a normal block read.
		 */
		FUNC42(FUNC43(zio, spa, bp, pabd, psize, NULL, NULL,
		    ZIO_PRIORITY_SYNC_READ,
		    ZIO_FLAG_CANFAIL | ZIO_FLAG_RAW, NULL));
	} else {
		/*
		 * Treat this as a vdev child I/O.
		 */
		FUNC42(FUNC45(zio, bp, vd, offset, pabd,
		    psize, ZIO_TYPE_READ, ZIO_PRIORITY_SYNC_READ,
		    ZIO_FLAG_DONT_CACHE | ZIO_FLAG_DONT_QUEUE |
		    ZIO_FLAG_DONT_PROPAGATE | ZIO_FLAG_DONT_RETRY |
		    ZIO_FLAG_CANFAIL | ZIO_FLAG_RAW | ZIO_FLAG_OPTIONAL,
		    NULL, NULL));
	}

	error = FUNC46(zio);
	FUNC27(spa, SCL_STATE, FTAG);

	if (error) {
		(void) FUNC24("Read of %s failed, error: %d\n", thing, error);
		goto out;
	}

	if (flags & ZDB_FLAG_DECOMPRESS) {
		/*
		 * We don't know how the data was compressed, so just try
		 * every decompress function at every inflated blocksize.
		 */
		enum zio_compress c;
		void *pbuf2 = FUNC31(SPA_MAXBLOCKSIZE, UMEM_NOFAIL);
		void *lbuf2 = FUNC31(SPA_MAXBLOCKSIZE, UMEM_NOFAIL);

		FUNC17(pbuf2, pabd, psize);

		FUNC15(FUNC19(pabd, psize, SPA_MAXBLOCKSIZE - psize,
		    random_get_pseudo_bytes_cb, NULL));

		FUNC15(FUNC25((uint8_t *)pbuf2 + psize,
		    SPA_MAXBLOCKSIZE - psize));

		for (lsize = SPA_MAXBLOCKSIZE; lsize > psize;
		    lsize -= SPA_MINBLOCKSIZE) {
			for (c = 0; c < ZIO_COMPRESS_FUNCTIONS; c++) {
				if (FUNC40(c, pabd,
				    lbuf, psize, lsize) == 0 &&
				    FUNC41(c, pbuf2,
				    lbuf2, psize, lsize) == 0 &&
				    FUNC21(lbuf, lbuf2, lsize) == 0)
					break;
			}
			if (c != ZIO_COMPRESS_FUNCTIONS)
				break;
			lsize -= SPA_MINBLOCKSIZE;
		}

		FUNC32(pbuf2, SPA_MAXBLOCKSIZE);
		FUNC32(lbuf2, SPA_MAXBLOCKSIZE);

		if (lsize <= psize) {
			(void) FUNC24("Decompress of %s failed\n", thing);
			goto out;
		}
		buf = lbuf;
		size = lsize;
	} else {
		buf = FUNC20(pabd);
		size = psize;
	}

	if (flags & ZDB_FLAG_PRINT_BLKPTR)
		FUNC38((blkptr_t *)(void *)
		    ((uintptr_t)buf + (uintptr_t)blkptr_offset), flags);
	else if (flags & ZDB_FLAG_RAW)
		FUNC35(buf, size, flags);
	else if (flags & ZDB_FLAG_INDIRECT)
		FUNC37((blkptr_t *)buf, size / sizeof (blkptr_t),
		    flags);
	else if (flags & ZDB_FLAG_GBH)
		FUNC36(buf, flags);
	else
		FUNC34(thing, buf, size, flags);

out:
	FUNC18(pabd);
	FUNC32(lbuf, SPA_MAXBLOCKSIZE);
	FUNC23(dup);
}