#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_20__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ushort_t ;
typedef  scalar_t__ uint_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
struct TYPE_28__ {int ctf_flags; int /*<<< orphan*/  ctf_dtstrlen; } ;
typedef  TYPE_2__ ctf_file_t ;
struct TYPE_29__ {scalar_t__ cte_bits; } ;
typedef  TYPE_3__ ctf_encoding_t ;
struct TYPE_31__ {char* dmd_name; int dmd_value; size_t dmd_offset; int /*<<< orphan*/  dmd_type; } ;
struct TYPE_26__ {TYPE_5__ dtu_members; } ;
struct TYPE_27__ {int /*<<< orphan*/  ctt_info; scalar_t__ ctt_size; int /*<<< orphan*/  ctt_lsizelo; int /*<<< orphan*/  ctt_lsizehi; } ;
struct TYPE_30__ {TYPE_1__ dtd_u; TYPE_20__ dtd_data; } ;
typedef  TYPE_4__ ctf_dtdef_t ;
typedef  TYPE_5__ ctf_dmdef_t ;

/* Variables and functions */
 int CTF_ERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ CTF_K_STRUCT ; 
 scalar_t__ CTF_K_UNION ; 
 scalar_t__ CTF_LSIZE_SENT ; 
 int CTF_MAX_SIZE ; 
 scalar_t__ CTF_MAX_VLEN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ECTF_BADID ; 
 int /*<<< orphan*/  ECTF_DTFULL ; 
 int /*<<< orphan*/  ECTF_DUPMEMBER ; 
 int /*<<< orphan*/  ECTF_NOTSOU ; 
 int /*<<< orphan*/  ECTF_RDONLY ; 
 int LCTF_DIRTY ; 
 int LCTF_RDWR ; 
 int FUNC6 (int,int) ; 
 int NBBY ; 
 TYPE_5__* FUNC7 (int) ; 
 TYPE_4__* FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int) ; 
 int FUNC10 (TYPE_2__*,TYPE_20__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,TYPE_5__*) ; 
 TYPE_5__* FUNC12 (TYPE_5__*) ; 
 TYPE_5__* FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char* FUNC16 (char const*) ; 
 int FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC20 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC21 (size_t,int) ; 
 scalar_t__ FUNC22 (char*,char const*) ; 
 scalar_t__ FUNC23 (char*) ; 

int
FUNC24(ctf_file_t *fp, ctf_id_t souid, const char *name, ctf_id_t type)
{
	ctf_dtdef_t *dtd = FUNC8(fp, souid);
	ctf_dmdef_t *dmd;

	ssize_t msize, malign, ssize;
	uint_t kind, vlen, root;
	char *s = NULL;

	if (!(fp->ctf_flags & LCTF_RDWR))
		return (FUNC15(fp, ECTF_RDONLY));

	if (dtd == NULL)
		return (FUNC15(fp, ECTF_BADID));

	kind = FUNC1(dtd->dtd_data.ctt_info);
	root = FUNC0(dtd->dtd_data.ctt_info);
	vlen = FUNC2(dtd->dtd_data.ctt_info);

	if (kind != CTF_K_STRUCT && kind != CTF_K_UNION)
		return (FUNC15(fp, ECTF_NOTSOU));

	if (vlen == CTF_MAX_VLEN)
		return (FUNC15(fp, ECTF_DTFULL));

	if (name != NULL) {
		for (dmd = FUNC12(&dtd->dtd_u.dtu_members);
		    dmd != NULL; dmd = FUNC12(dmd)) {
			if (dmd->dmd_name != NULL &&
			    FUNC22(dmd->dmd_name, name) == 0)
				return (FUNC15(fp, ECTF_DUPMEMBER));
		}
	}

	if ((msize = FUNC20(fp, type)) == CTF_ERR ||
	    (malign = FUNC17(fp, type)) == CTF_ERR)
		return (CTF_ERR); /* errno is set for us */

	if ((dmd = FUNC7(sizeof (ctf_dmdef_t))) == NULL)
		return (FUNC15(fp, EAGAIN));

	if (name != NULL && (s = FUNC16(name)) == NULL) {
		FUNC9(dmd, sizeof (ctf_dmdef_t));
		return (FUNC15(fp, EAGAIN));
	}

	dmd->dmd_name = s;
	dmd->dmd_type = type;
	dmd->dmd_value = -1;

	if (kind == CTF_K_STRUCT && vlen != 0) {
		ctf_dmdef_t *lmd = FUNC13(&dtd->dtd_u.dtu_members);
		ctf_id_t ltype = FUNC19(fp, lmd->dmd_type);
		size_t off = lmd->dmd_offset;

		ctf_encoding_t linfo;
		ssize_t lsize;

		if (FUNC18(fp, ltype, &linfo) != CTF_ERR)
			off += linfo.cte_bits;
		else if ((lsize = FUNC20(fp, ltype)) != CTF_ERR)
			off += lsize * NBBY;

		/*
		 * Round up the offset of the end of the last member to the
		 * next byte boundary, convert 'off' to bytes, and then round
		 * it up again to the next multiple of the alignment required
		 * by the new member.  Finally, convert back to bits and store
		 * the result in dmd_offset.  Technically we could do more
		 * efficient packing if the new member is a bit-field, but
		 * we're the "compiler" and ANSI says we can do as we choose.
		 */
		off = FUNC21(off, NBBY) / NBBY;
		off = FUNC21(off, FUNC6(malign, 1));
		dmd->dmd_offset = off * NBBY;
		ssize = off + msize;
	} else {
		dmd->dmd_offset = 0;
		ssize = FUNC10(fp, &dtd->dtd_data, NULL, NULL);
		ssize = FUNC6(ssize, msize);
	}

	if (ssize > CTF_MAX_SIZE) {
		dtd->dtd_data.ctt_size = CTF_LSIZE_SENT;
		dtd->dtd_data.ctt_lsizehi = FUNC3(ssize);
		dtd->dtd_data.ctt_lsizelo = FUNC4(ssize);
	} else
		dtd->dtd_data.ctt_size = (ushort_t)ssize;

	dtd->dtd_data.ctt_info = FUNC5(kind, root, vlen + 1);
	FUNC11(&dtd->dtd_u.dtu_members, dmd);

	if (s != NULL)
		fp->ctf_dtstrlen += FUNC23(s) + 1;

	FUNC14(fp, type);
	fp->ctf_flags |= LCTF_DIRTY;
	return (0);
}