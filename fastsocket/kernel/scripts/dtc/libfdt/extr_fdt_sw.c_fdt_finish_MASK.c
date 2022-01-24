#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct fdt_property {void* nameoff; } ;

/* Variables and functions */
 scalar_t__ FDT_END ; 
 int FDT_ERR_BADSTRUCTURE ; 
 int FDT_ERR_NOSPACE ; 
 int /*<<< orphan*/  FDT_MAGIC ; 
 scalar_t__ FDT_PROP ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__* FUNC1 (void*,int) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*,int,int*) ; 
 int FUNC5 (void*) ; 
 struct fdt_property* FUNC6 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int) ; 
 int /*<<< orphan*/  FUNC9 (void*,int) ; 
 int FUNC10 (void*) ; 
 int FUNC11 (void*) ; 
 int FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 

int FUNC14(void *fdt)
{
	char *p = (char *)fdt;
	uint32_t *end;
	int oldstroffset, newstroffset;
	uint32_t tag;
	int offset, nextoffset;

	FUNC0(fdt);

	/* Add terminator */
	end = FUNC1(fdt, sizeof(*end));
	if (! end)
		return -FDT_ERR_NOSPACE;
	*end = FUNC2(FDT_END);

	/* Relocate the string table */
	oldstroffset = FUNC12(fdt) - FUNC10(fdt);
	newstroffset = FUNC5(fdt) + FUNC11(fdt);
	FUNC13(p + newstroffset, p + oldstroffset, FUNC10(fdt));
	FUNC8(fdt, newstroffset);

	/* Walk the structure, correcting string offsets */
	offset = 0;
	while ((tag = FUNC4(fdt, offset, &nextoffset)) != FDT_END) {
		if (tag == FDT_PROP) {
			struct fdt_property *prop =
				FUNC6(fdt, offset, sizeof(*prop));
			int nameoff;

			if (! prop)
				return -FDT_ERR_BADSTRUCTURE;

			nameoff = FUNC3(prop->nameoff);
			nameoff += FUNC10(fdt);
			prop->nameoff = FUNC2(nameoff);
		}
		offset = nextoffset;
	}

	/* Finally, adjust the header */
	FUNC9(fdt, newstroffset + FUNC10(fdt));
	FUNC7(fdt, FDT_MAGIC);
	return 0;
}