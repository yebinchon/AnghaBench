#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
struct TYPE_18__ {int ctf_flags; int /*<<< orphan*/  ctf_dtstrlen; } ;
typedef  TYPE_3__ ctf_file_t ;
struct TYPE_20__ {char* dmd_name; int dmd_value; scalar_t__ dmd_offset; int /*<<< orphan*/  dmd_type; } ;
struct TYPE_17__ {TYPE_5__ dtu_members; } ;
struct TYPE_16__ {int /*<<< orphan*/  ctt_info; } ;
struct TYPE_19__ {TYPE_2__ dtd_u; TYPE_1__ dtd_data; } ;
typedef  TYPE_4__ ctf_dtdef_t ;
typedef  TYPE_5__ ctf_dmdef_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTF_ERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ CTF_K_ENUM ; 
 scalar_t__ CTF_MAX_VLEN ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ECTF_BADID ; 
 int /*<<< orphan*/  ECTF_DTFULL ; 
 int /*<<< orphan*/  ECTF_DUPMEMBER ; 
 int /*<<< orphan*/  ECTF_NOTENUM ; 
 int /*<<< orphan*/  ECTF_RDONLY ; 
 int /*<<< orphan*/  EINVAL ; 
 int LCTF_DIRTY ; 
 int LCTF_RDWR ; 
 TYPE_5__* FUNC4 (int) ; 
 TYPE_4__* FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,TYPE_5__*) ; 
 TYPE_5__* FUNC8 (TYPE_5__*) ; 
 int FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char*,char const*) ; 
 scalar_t__ FUNC12 (char*) ; 

int
FUNC13(ctf_file_t *fp, ctf_id_t enid, const char *name, int value)
{
	ctf_dtdef_t *dtd = FUNC5(fp, enid);
	ctf_dmdef_t *dmd;

	uint_t kind, vlen, root;
	char *s;

	if (name == NULL)
		return (FUNC9(fp, EINVAL));

	if (!(fp->ctf_flags & LCTF_RDWR))
		return (FUNC9(fp, ECTF_RDONLY));

	if (dtd == NULL)
		return (FUNC9(fp, ECTF_BADID));

	kind = FUNC1(dtd->dtd_data.ctt_info);
	root = FUNC0(dtd->dtd_data.ctt_info);
	vlen = FUNC2(dtd->dtd_data.ctt_info);

	if (kind != CTF_K_ENUM)
		return (FUNC9(fp, ECTF_NOTENUM));

	if (vlen == CTF_MAX_VLEN)
		return (FUNC9(fp, ECTF_DTFULL));

	for (dmd = FUNC8(&dtd->dtd_u.dtu_members);
	    dmd != NULL; dmd = FUNC8(dmd)) {
		if (FUNC11(dmd->dmd_name, name) == 0)
			return (FUNC9(fp, ECTF_DUPMEMBER));
	}

	if ((dmd = FUNC4(sizeof (ctf_dmdef_t))) == NULL)
		return (FUNC9(fp, EAGAIN));

	if ((s = FUNC10(name)) == NULL) {
		FUNC6(dmd, sizeof (ctf_dmdef_t));
		return (FUNC9(fp, EAGAIN));
	}

	dmd->dmd_name = s;
	dmd->dmd_type = CTF_ERR;
	dmd->dmd_offset = 0;
	dmd->dmd_value = value;

	dtd->dtd_data.ctt_info = FUNC3(kind, root, vlen + 1);
	FUNC7(&dtd->dtd_u.dtu_members, dmd);

	fp->ctf_dtstrlen += FUNC12(s) + 1;
	fp->ctf_flags |= LCTF_DIRTY;

	return (0);
}