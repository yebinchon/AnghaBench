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
struct TYPE_3__ {char* ar_name; } ;
typedef  int /*<<< orphan*/  Elf_Cmd ;
typedef  TYPE_1__ Elf_Arhdr ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ELF_C_READ ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5(int fd, Elf *elf, char *file)
{
	Elf *melf;
	Elf_Cmd cmd = ELF_C_READ;
	Elf_Arhdr *arh;
	int nfiles = 0, err = 0;

	while ((melf = FUNC0(fd, cmd, elf)) != NULL) {
		if ((arh = FUNC2(melf)) == NULL) {
			FUNC4("Can't process input archive %s\n",
			    file);
			err++;
		}

		if (*arh->ar_name != '/')
			nfiles++;

		cmd = FUNC3(melf);
		(void) FUNC1(melf);
	}

	if (err > 0)
		return (-1);

	return (nfiles);
}