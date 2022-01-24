#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct symver {int dummy; } ;
struct section {scalar_t__ link; char* name; int /*<<< orphan*/  scn; } ;
struct readelf {scalar_t__ shnum; int ver_sz; TYPE_5__* ver; struct section* vd_s; } ;
struct TYPE_9__ {char* name; } ;
struct TYPE_8__ {scalar_t__ d_size; int /*<<< orphan*/ * d_buf; } ;
struct TYPE_7__ {scalar_t__ vda_next; int /*<<< orphan*/  vda_name; } ;
struct TYPE_6__ {int vd_version; int vd_flags; int vd_ndx; int vd_cnt; int vd_aux; scalar_t__ vd_next; } ;
typedef  TYPE_1__ Elf_Verdef ;
typedef  TYPE_2__ Elf_Verdaux ;
typedef  TYPE_3__ Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char const*,int) ; 
 TYPE_5__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC5 (struct readelf*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct readelf *re, int dump)
{
	struct section *s;
	struct symver *nv;
	Elf_Data *d;
	Elf_Verdef *vd;
	Elf_Verdaux *vda;
	uint8_t *buf, *end, *buf2;
	const char *name;
	int elferr, i, j;

	if ((s = re->vd_s) == NULL)
		return;
	if (s->link >= re->shnum)
		return;

	if (re->ver == NULL) {
		re->ver_sz = 16;
		if ((re->ver = FUNC1(re->ver_sz, sizeof(*re->ver))) ==
		    NULL) {
			FUNC7("calloc failed");
			return;
		}
		re->ver[0].name = "*local*";
		re->ver[1].name = "*global*";
	}

	if (dump)
		FUNC6("\nVersion definition section (%s):\n", s->name);
	(void) FUNC3();
	if ((d = FUNC4(s->scn, NULL)) == NULL) {
		elferr = FUNC3();
		if (elferr != 0)
			FUNC8("elf_getdata failed: %s", FUNC2(elferr));
		return;
	}
	if (d->d_size == 0)
		return;

	buf = d->d_buf;
	end = buf + d->d_size;
	while (buf + sizeof(Elf_Verdef) <= end) {
		vd = (Elf_Verdef *) (uintptr_t) buf;
		if (dump) {
			FUNC6("  0x%4.4lx", (unsigned long)
			    (buf - (uint8_t *)d->d_buf));
			FUNC6(" vd_version: %u vd_flags: %d"
			    " vd_ndx: %u vd_cnt: %u", vd->vd_version,
			    vd->vd_flags, vd->vd_ndx, vd->vd_cnt);
		}
		buf2 = buf + vd->vd_aux;
		j = 0;
		while (buf2 + sizeof(Elf_Verdaux) <= end && j < vd->vd_cnt) {
			vda = (Elf_Verdaux *) (uintptr_t) buf2;
			name = FUNC5(re, s->link, vda->vda_name);
			if (j == 0) {
				if (dump)
					FUNC6(" vda_name: %s\n", name);
				FUNC0((int)vd->vd_ndx, name, 1);
			} else if (dump)
				FUNC6("  0x%4.4lx parent: %s\n",
				    (unsigned long) (buf2 -
				    (uint8_t *)d->d_buf), name);
			if (vda->vda_next == 0)
				break;
			buf2 += vda->vda_next;
			j++;
		}
		if (vd->vd_next == 0)
			break;
		buf += vd->vd_next;
	}
}