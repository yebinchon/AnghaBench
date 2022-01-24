#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tdata_t ;
struct TYPE_4__ {int ctl_label; int ctl_typeidx; } ;
typedef  TYPE_1__ ctf_lblent_t ;
struct TYPE_5__ {scalar_t__ cth_lbloff; scalar_t__ cth_stroff; size_t cth_objtoff; } ;
typedef  TYPE_2__ ctf_header_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  curfile ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*,int) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int
FUNC5(ctf_header_t *h, tdata_t *td, caddr_t ctfdata, char *matchlbl)
{
	caddr_t buf = ctfdata + h->cth_lbloff;
	caddr_t sbuf = ctfdata + h->cth_stroff;
	size_t bufsz = h->cth_objtoff - h->cth_lbloff;
	int lastidx = 0, baseidx = -1;
	char *baselabel = NULL;
	ctf_lblent_t *ctl;
	void *v = (void *) buf;

	for (ctl = v; (caddr_t)ctl < buf + bufsz; ctl++) {
		char *label = sbuf + ctl->ctl_label;

		lastidx = ctl->ctl_typeidx;

		FUNC0(3, "Resurrected label %s type idx %d\n", label, lastidx);

		FUNC2(td, label, lastidx);

		if (baseidx == -1) {
			baseidx = lastidx;
			baselabel = label;
			if (matchlbl != NULL && FUNC1(matchlbl, "BASE"))
				return (lastidx);
		}

		if (matchlbl != NULL && FUNC1(label, matchlbl))
			return (lastidx);
	}

	if (matchlbl != NULL) {
		/* User provided a label that didn't match */
		FUNC4("%s: Cannot find label `%s' - using base (%s)\n",
		    curfile, matchlbl, (baselabel ? baselabel : "NONE"));

		FUNC3(td);
		FUNC2(td, baselabel, baseidx);

		return (baseidx);
	}

	return (lastidx);
}