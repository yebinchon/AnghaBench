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
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ELF_C_READ ; 
#define  ELF_K_AR 129 
#define  ELF_K_ELF 128 
 int /*<<< orphan*/  EV_CURRENT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,...) ; 

int
FUNC10(char **files, int n)
{
	int nfiles = 0, err = 0;
	Elf *elf;
	int fd, rc, i;

	(void) FUNC7(EV_CURRENT);

	for (i = 0; i < n; i++) {
		char *file = files[i];

		if ((fd = FUNC8(file, O_RDONLY)) < 0) {
			FUNC9("Can't read input file %s", file);
			err++;
			continue;
		}

		if ((elf = FUNC3(fd, ELF_C_READ, NULL)) == NULL) {
			FUNC9("Can't open input file %s: %s\n", file,
			    FUNC5(-1));
			err++;
			(void) FUNC0(fd);
			continue;
		}

		switch (FUNC6(elf)) {
		case ELF_K_AR:
			if ((rc = FUNC1(fd, elf, file)) < 0)
				err++;
			else
				nfiles += rc;
			break;
		case ELF_K_ELF:
			nfiles++;
			break;
		default:
			FUNC9("Input file %s is corrupt\n", file);
			err++;
		}

		(void) FUNC4(elf);
		(void) FUNC0(fd);
	}

	if (err > 0)
		return (-1);

	FUNC2(2, "Found %d files in %d input files\n", nfiles, n);

	return (nfiles);
}