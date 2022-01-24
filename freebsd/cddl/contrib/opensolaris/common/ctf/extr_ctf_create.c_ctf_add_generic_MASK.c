#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint_t ;
typedef  scalar_t__ ctf_id_t ;
struct TYPE_11__ {int ctf_flags; int /*<<< orphan*/  ctf_dtstrlen; scalar_t__ ctf_dtnextid; } ;
typedef  TYPE_1__ ctf_file_t ;
struct TYPE_12__ {char* dtd_name; scalar_t__ dtd_type; } ;
typedef  TYPE_2__ ctf_dtdef_t ;

/* Variables and functions */
 scalar_t__ CTF_ADD_NONROOT ; 
 scalar_t__ CTF_ADD_ROOT ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ CTF_MAX_TYPE ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ECTF_FULL ; 
 int /*<<< orphan*/  ECTF_RDONLY ; 
 int /*<<< orphan*/  EINVAL ; 
 int LCTF_CHILD ; 
 int LCTF_DIRTY ; 
 int LCTF_RDWR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char*) ; 

__attribute__((used)) static ctf_id_t
FUNC8(ctf_file_t *fp, uint_t flag, const char *name, ctf_dtdef_t **rp)
{
	ctf_dtdef_t *dtd;
	ctf_id_t type;
	char *s = NULL;

	if (flag != CTF_ADD_NONROOT && flag != CTF_ADD_ROOT)
		return (FUNC5(fp, EINVAL));

	if (!(fp->ctf_flags & LCTF_RDWR))
		return (FUNC5(fp, ECTF_RDONLY));

	if (FUNC0(fp->ctf_dtnextid, 1) > CTF_MAX_TYPE)
		return (FUNC5(fp, ECTF_FULL));

	if ((dtd = FUNC2(sizeof (ctf_dtdef_t))) == NULL)
		return (FUNC5(fp, EAGAIN));

	if (name != NULL && (s = FUNC6(name)) == NULL) {
		FUNC4(dtd, sizeof (ctf_dtdef_t));
		return (FUNC5(fp, EAGAIN));
	}

	type = fp->ctf_dtnextid++;
	type = FUNC0(type, (fp->ctf_flags & LCTF_CHILD));

	FUNC1(dtd, sizeof (ctf_dtdef_t));
	dtd->dtd_name = s;
	dtd->dtd_type = type;

	if (s != NULL)
		fp->ctf_dtstrlen += FUNC7(s) + 1;

	FUNC3(fp, dtd);
	fp->ctf_flags |= LCTF_DIRTY;

	*rp = dtd;
	return (type);
}