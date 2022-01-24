#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct section {int /*<<< orphan*/  link; int /*<<< orphan*/  scn; int /*<<< orphan*/  name; } ;
struct elfdump {int flags; } ;
typedef  int /*<<< orphan*/  idx ;
struct TYPE_7__ {int /*<<< orphan*/  vda_next; int /*<<< orphan*/  vda_name; } ;
struct TYPE_6__ {int vd_ndx; int vd_flags; int vd_cnt; int /*<<< orphan*/  vd_next; int /*<<< orphan*/  vd_aux; int /*<<< orphan*/  vd_hash; int /*<<< orphan*/  vd_version; } ;
struct TYPE_5__ {int d_size; int /*<<< orphan*/ * d_buf; } ;
typedef  TYPE_1__ Elf_Data ;
typedef  TYPE_2__ Elf32_Verdef ;
typedef  TYPE_3__ Elf32_Verdaux ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int SOLARIS_FMT ; 
 int VER_FLG_BASE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (struct elfdump*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct elfdump *ed, struct section *s)
{
	Elf_Data	*data;
	Elf32_Verdef	*vd;
	Elf32_Verdaux	*vda;
	const char 	*str;
	char		 idx[10];
	uint8_t		*buf, *end, *buf2;
	int		 i, j, elferr, count;

	if (ed->flags & SOLARIS_FMT)
		FUNC0("Version Definition Section:  %s\n", s->name);
	else
		FUNC0("\nversion definition section (%s):\n", s->name);
	(void) FUNC2();
	if ((data = FUNC3(s->scn, NULL)) == NULL) {
		elferr = FUNC2();
		if (elferr != 0)
			FUNC6("elf_getdata failed: %s",
			    FUNC1(elferr));
		return;
	}
	buf = data->d_buf;
	end = buf + data->d_size;
	i = 0;
	if (ed->flags & SOLARIS_FMT)
		FUNC0("     index  version                     dependency\n");
	while (buf + sizeof(Elf32_Verdef) <= end) {
		vd = (Elf32_Verdef *) (uintptr_t) buf;
		if (ed->flags & SOLARIS_FMT) {
			FUNC5(idx, sizeof(idx), "[%d]", vd->vd_ndx);
			FUNC0("%10s  ", idx);
		} else {
			FUNC0("\nentry: %d\n", i++);
			FUNC0("\tvd_version: %u\n", vd->vd_version);
			FUNC0("\tvd_flags: %u\n", vd->vd_flags);
			FUNC0("\tvd_ndx: %u\n", vd->vd_ndx);
			FUNC0("\tvd_cnt: %u\n", vd->vd_cnt);
			FUNC0("\tvd_hash: %u\n", vd->vd_hash);
			FUNC0("\tvd_aux: %u\n", vd->vd_aux);
			FUNC0("\tvd_next: %u\n\n", vd->vd_next);
		}
		buf2 = buf + vd->vd_aux;
		j = 0;
		count = 0;
		while (buf2 + sizeof(Elf32_Verdaux) <= end && j < vd->vd_cnt) {
			vda = (Elf32_Verdaux *) (uintptr_t) buf2;
			str = FUNC4(ed, s->link, vda->vda_name);
			if (ed->flags & SOLARIS_FMT) {
				if (count == 0)
					FUNC0("%-26.26s", str);
				else if (count == 1)
					FUNC0("  %-20.20s", str);
				else {
					FUNC0("\n%40.40s", "");
					FUNC0("%s", str);
				}
			} else {
				FUNC0("\t\tvda: %d\n", j++);
				FUNC0("\t\t\tvda_name: %s\n", str);
				FUNC0("\t\t\tvda_next: %u\n", vda->vda_next);
			}
			if (vda->vda_next == 0) {
				if (ed->flags & SOLARIS_FMT) {
					if (vd->vd_flags & VER_FLG_BASE) {
						if (count == 0)
							FUNC0("%-20.20s", "");
						FUNC0("%s", "[ BASE ]");
					}
					FUNC0("\n");
				}
				break;
			}
			if (ed->flags & SOLARIS_FMT)
				count++;
			buf2 += vda->vda_next;
		}
		if (vd->vd_next == 0)
			break;
		buf += vd->vd_next;
	}
}