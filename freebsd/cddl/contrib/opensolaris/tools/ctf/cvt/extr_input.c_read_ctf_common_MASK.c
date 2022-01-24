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
typedef  int /*<<< orphan*/  read_cb_f ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ELF_C_READ ; 
#define  ELF_K_AR 129 
#define  ELF_K_ELF 128 
 int /*<<< orphan*/  EV_CURRENT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,void*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC11(char *file, char *label, read_cb_f *func, void *arg,
    int require_ctf)
{
	Elf *elf;
	int found = 0;
	int fd;

	FUNC1(3, "Reading %s (label %s)\n", file, (label ? label : "NONE"));

	(void) FUNC5(EV_CURRENT);

	if ((fd = FUNC7(file, O_RDONLY)) < 0)
		FUNC10("%s: Cannot open for reading", file);
	if ((elf = FUNC2(fd, ELF_C_READ, NULL)) == NULL)
		FUNC6(file, "Cannot read");

	switch (FUNC4(elf)) {
	case ELF_K_AR:
		found = FUNC8(fd, elf, file, label,
		    func, arg, require_ctf);
		break;

	case ELF_K_ELF:
		found = FUNC9(elf, file, label,
		    func, arg, require_ctf);
		break;

	default:
		FUNC10("%s: Unknown elf kind %d\n", file, FUNC4(elf));
	}

	(void) FUNC3(elf);
	(void) FUNC0(fd);

	return (found);
}