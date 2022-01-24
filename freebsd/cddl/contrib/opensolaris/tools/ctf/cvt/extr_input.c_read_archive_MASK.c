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
typedef  int /*<<< orphan*/  read_cb_f ;
struct TYPE_3__ {char* ar_name; } ;
typedef  int /*<<< orphan*/  Elf_Cmd ;
typedef  TYPE_1__ Elf_Arhdr ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ELF_C_READ ; 
#define  ELF_K_AR 129 
#define  ELF_K_ELF 128 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t,char*,char*,char*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 char* FUNC11 (size_t) ; 

__attribute__((used)) static int
FUNC12(int fd, Elf *elf, char *file, char *label, read_cb_f *func,
    void *arg, int require_ctf)
{
	Elf *melf;
	Elf_Cmd cmd = ELF_C_READ;
	Elf_Arhdr *arh;
	int secnum = 1, found = 0;

	while ((melf = FUNC0(fd, cmd, elf)) != NULL) {
		int rc = 0;

		if ((arh = FUNC2(melf)) == NULL) {
			FUNC5(file, "Can't get archive header for "
			    "member %d", secnum);
		}

		/* skip special sections - their names begin with "/" */
		if (*arh->ar_name != '/') {
			size_t memlen = FUNC9(file) + 1 +
			    FUNC9(arh->ar_name) + 1 + 1;
			char *memname = FUNC11(memlen);

			FUNC8(memname, memlen, "%s(%s)", file, arh->ar_name);

			switch (FUNC3(melf)) {
			case ELF_K_AR:
				rc = FUNC12(fd, melf, memname, label,
				    func, arg, require_ctf);
				break;
			case ELF_K_ELF:
				rc = FUNC7(melf, memname, label,
				    func, arg, require_ctf);
				break;
			default:
				FUNC10("%s: Unknown elf kind %d\n",
				    memname, FUNC3(melf));
			}

			FUNC6(memname);
		}

		cmd = FUNC4(melf);
		(void) FUNC1(melf);
		secnum++;

		if (rc < 0)
			return (rc);
		else
			found += rc;
	}

	return (found);
}