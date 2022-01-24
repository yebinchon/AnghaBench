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
struct readelf {int flags; char* filename; int /*<<< orphan*/ * elf; } ;

/* Variables and functions */
 int DISPLAY_FILENAME ; 
 int /*<<< orphan*/  ELF_C_READ ; 
#define  ELF_K_AR 130 
#define  ELF_K_ELF 129 
#define  ELF_K_NONE 128 
 int /*<<< orphan*/  FUNC0 (struct readelf*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct readelf*) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static void
FUNC8(struct readelf *re, int fd)
{
	if ((re->flags & DISPLAY_FILENAME) != 0)
		FUNC6("\nFile: %s\n", re->filename);

	if ((re->elf = FUNC2(fd, ELF_C_READ, NULL)) == NULL) {
		FUNC7("elf_begin() failed: %s", FUNC4(-1));
		return;
	}

	switch (FUNC5(re->elf)) {
	case ELF_K_NONE:
		FUNC7("Not an ELF file.");
		return;
	case ELF_K_ELF:
		FUNC1(re);
		break;
	case ELF_K_AR:
		FUNC0(re, fd);
		break;
	default:
		FUNC7("Internal: libelf returned unknown elf kind.");
		return;
	}

	FUNC3(re->elf);
}