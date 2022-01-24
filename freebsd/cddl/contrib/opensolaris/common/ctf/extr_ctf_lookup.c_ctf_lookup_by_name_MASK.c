#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* ctl_prefix; int /*<<< orphan*/  ctl_hash; int /*<<< orphan*/  ctl_len; } ;
typedef  TYPE_1__ ctf_lookup_t ;
typedef  scalar_t__ ctf_id_t ;
struct TYPE_10__ {scalar_t__ h_type; } ;
typedef  TYPE_2__ ctf_helem_t ;
struct TYPE_11__ {scalar_t__* ctf_ptrtab; int ctf_flags; struct TYPE_11__* ctf_parent; TYPE_1__* ctf_lookups; } ;
typedef  TYPE_3__ ctf_file_t ;

/* Variables and functions */
 scalar_t__ CTF_ERR ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 size_t FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ECTF_NOTYPE ; 
 int /*<<< orphan*/  ECTF_SYNTAX ; 
 int /*<<< orphan*/  EINVAL ; 
 int LCTF_CHILD ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,char const*,size_t) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC5 (char const*,size_t) ; 
 scalar_t__ FUNC6 (char const) ; 
 char* FUNC7 (char const*,char) ; 
 int FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char const*,char*,size_t) ; 
 char* FUNC10 (char const*,char const*) ; 

ctf_id_t
FUNC11(ctf_file_t *fp, const char *name)
{
	static const char delimiters[] = " \t\n\r\v\f*";

	const ctf_lookup_t *lp;
	const ctf_helem_t *hp;
	const char *p, *q, *end;
	ctf_id_t type = 0;
	ctf_id_t ntype, ptype;

	if (name == NULL)
		return (FUNC3(fp, EINVAL));

	for (p = name, end = name + FUNC8(name); *p != '\0'; p = q) {
		while (FUNC6(*p))
			p++; /* skip leading ws */

		if (p == end)
			break;

		if ((q = FUNC10(p + 1, delimiters)) == NULL)
			q = end; /* compare until end */

		if (*p == '*') {
			/*
			 * Find a pointer to type by looking in fp->ctf_ptrtab.
			 * If we can't find a pointer to the given type, see if
			 * we can compute a pointer to the type resulting from
			 * resolving the type down to its base type and use
			 * that instead.  This helps with cases where the CTF
			 * data includes "struct foo *" but not "foo_t *" and
			 * the user tries to access "foo_t *" in the debugger.
			 */
			ntype = fp->ctf_ptrtab[FUNC1(type)];
			if (ntype == 0) {
				ntype = FUNC4(fp, type);
				if (ntype == CTF_ERR || (ntype = fp->ctf_ptrtab[
				    FUNC1(ntype)]) == 0) {
					(void) FUNC3(fp, ECTF_NOTYPE);
					goto err;
				}
			}

			type = FUNC0(ntype,
			    (fp->ctf_flags & LCTF_CHILD));

			q = p + 1;
			continue;
		}

		if (FUNC5(p, (size_t)(q - p)))
			continue; /* skip qualifier keyword */

		for (lp = fp->ctf_lookups; lp->ctl_prefix != NULL; lp++) {
			if (lp->ctl_prefix[0] == '\0' ||
			    FUNC9(p, lp->ctl_prefix, (size_t)(q - p)) == 0) {
				for (p += lp->ctl_len; FUNC6(*p); p++)
					continue; /* skip prefix and next ws */

				if ((q = FUNC7(p, '*')) == NULL)
					q = end;  /* compare until end */

				while (FUNC6(q[-1]))
					q--;	  /* exclude trailing ws */

				if ((hp = FUNC2(lp->ctl_hash, fp, p,
				    (size_t)(q - p))) == NULL) {
					(void) FUNC3(fp, ECTF_NOTYPE);
					goto err;
				}

				type = hp->h_type;
				break;
			}
		}

		if (lp->ctl_prefix == NULL) {
			(void) FUNC3(fp, ECTF_NOTYPE);
			goto err;
		}
	}

	if (*p != '\0' || type == 0)
		return (FUNC3(fp, ECTF_SYNTAX));

	return (type);

err:
	if (fp->ctf_parent != NULL &&
	    (ptype = FUNC11(fp->ctf_parent, name)) != CTF_ERR)
		return (ptype);

	return (CTF_ERR);
}