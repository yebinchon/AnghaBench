#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uintmax_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct section {int /*<<< orphan*/ * name; } ;
struct readelf {size_t shnum; scalar_t__ (* dw_decode ) (int /*<<< orphan*/ **,int) ;int /*<<< orphan*/  dbg; struct section* sl; } ;
struct TYPE_3__ {int /*<<< orphan*/ * signature; } ;
typedef  scalar_t__ Dwarf_Unsigned ;
typedef  TYPE_1__ Dwarf_Sig8 ;
typedef  scalar_t__ Dwarf_Off ;
typedef  scalar_t__ Dwarf_Half ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/ * Dwarf_Die ;
typedef  scalar_t__ Dwarf_Bool ;

/* Variables and functions */
 int DW_DLV_ERROR ; 
 int DW_DLV_OK ; 
 scalar_t__ DW_TAG_compile_unit ; 
 scalar_t__ DW_TAG_type_unit ; 
 int /*<<< orphan*/  FUNC0 (struct readelf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,TYPE_1__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC8 (struct readelf*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

__attribute__((used)) static void
FUNC12(struct readelf *re, Dwarf_Bool is_info)
{
	struct section *s;
	Dwarf_Die die;
	Dwarf_Error de;
	Dwarf_Half tag, version, pointer_size, off_size;
	Dwarf_Off cu_offset, cu_length;
	Dwarf_Off aboff;
	Dwarf_Unsigned typeoff;
	Dwarf_Sig8 sig8;
	Dwarf_Unsigned sig;
	uint8_t *p;
	const char *sn;
	int i, ret;

	sn = is_info ? ".debug_info" : ".debug_types";

	s = NULL;
	for (i = 0; (size_t) i < re->shnum; i++) {
		s = &re->sl[i];
		if (s->name != NULL && !FUNC9(s->name, sn))
			break;
	}
	if ((size_t) i >= re->shnum)
		return;

	do {
		FUNC7("\nDump of debug contents of section %s:\n", sn);

		while ((ret = FUNC3(re->dbg, is_info, NULL,
		    &version, &aboff, &pointer_size, &off_size, NULL, &sig8,
		    &typeoff, NULL, &de)) == DW_DLV_OK) {
			FUNC8(re, pointer_size, off_size, version);
			die = NULL;
			while (FUNC5(re->dbg, die, &die, is_info,
			    &de) == DW_DLV_OK) {
				if (FUNC6(die, &tag, &de) != DW_DLV_OK) {
					FUNC11("dwarf_tag failed: %s",
					    FUNC2(de));
					continue;
				}
				/* XXX: What about DW_TAG_partial_unit? */
				if ((is_info && tag == DW_TAG_compile_unit) ||
				    (!is_info && tag == DW_TAG_type_unit))
					break;
			}
			if (die == NULL && is_info) {
				FUNC11("could not find DW_TAG_compile_unit "
				    "die");
				continue;
			} else if (die == NULL && !is_info) {
				FUNC11("could not find DW_TAG_type_unit die");
				continue;
			}

			if (FUNC1(die, &cu_offset,
			    &cu_length, &de) != DW_DLV_OK) {
				FUNC11("dwarf_die_CU_offset failed: %s",
				    FUNC2(de));
				continue;
			}

			cu_length -= off_size == 4 ? 4 : 12;

			sig = 0;
			if (!is_info) {
				p = (uint8_t *)(uintptr_t) &sig8.signature[0];
				sig = re->dw_decode(&p, 8);
			}

			FUNC7("\n  Type Unit @ offset 0x%jx:\n",
			    (uintmax_t) cu_offset);
			FUNC7("    Length:\t\t%#jx (%d-bit)\n",
			    (uintmax_t) cu_length, off_size == 4 ? 32 : 64);
			FUNC7("    Version:\t\t%u\n", version);
			FUNC7("    Abbrev Offset:\t0x%jx\n",
			    (uintmax_t) aboff);
			FUNC7("    Pointer Size:\t%u\n", pointer_size);
			if (!is_info) {
				FUNC7("    Signature:\t\t0x%016jx\n",
				    (uintmax_t) sig);
				FUNC7("    Type Offset:\t0x%jx\n",
				    (uintmax_t) typeoff);
			}

			FUNC0(re, die, 0);
		}
		if (ret == DW_DLV_ERROR)
			FUNC11("dwarf_next_cu_header: %s", FUNC2(de));
		if (is_info)
			break;
	} while (FUNC4(re->dbg, &de) == DW_DLV_OK);
}