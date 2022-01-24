#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char const* ar_name; } ;
struct TYPE_8__ {scalar_t__ e_shnum; scalar_t__ e_type; } ;
typedef  int /*<<< orphan*/  GElf_Shdr ;
typedef  TYPE_1__ GElf_Ehdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  int /*<<< orphan*/  Elf_Cmd ;
typedef  TYPE_2__ Elf_Arhdr ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ELF_C_READ ; 
 scalar_t__ ELF_K_ELF ; 
 scalar_t__ ELF_K_NONE ; 
 scalar_t__ ET_CORE ; 
 int RETURN_DATAERR ; 
 int RETURN_OK ; 
 scalar_t__ STYLE_BERKELEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (char const*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ style ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*) ; 

__attribute__((used)) static int
FUNC17(int fd, const char *name)
{
	GElf_Ehdr elfhdr;
	GElf_Shdr shdr;
	Elf *elf, *elf1;
	Elf_Arhdr *arhdr;
	Elf_Scn *scn;
	Elf_Cmd elf_cmd;
	int exit_code;

	elf_cmd = ELF_C_READ;
	elf1 = FUNC4(fd, elf_cmd, NULL);
	while ((elf = FUNC4(fd, elf_cmd, elf1)) != NULL) {
		arhdr = FUNC6(elf);
		if (FUNC7(elf) == ELF_K_NONE && arhdr == NULL) {
			(void) FUNC5(elf);
			(void) FUNC5(elf1);
			(void) FUNC3(fd);
			return (RETURN_DATAERR);
		}
		if (FUNC7(elf) != ELF_K_ELF ||
		    (FUNC10(elf, &elfhdr) == NULL)) {
			elf_cmd = FUNC8(elf);
			(void) FUNC5(elf);
			FUNC16("%s: File format not recognized",
			    arhdr != NULL ? arhdr->ar_name : name);
			continue;
		}
		/* Core dumps are handled separately */
		if (elfhdr.e_shnum == 0 && elfhdr.e_type == ET_CORE) {
			exit_code = FUNC12(name, elf, &elfhdr);
			(void) FUNC5(elf);
			(void) FUNC5(elf1);
			(void) FUNC3(fd);
			return (exit_code);
		} else {
			scn = NULL;
			if (style == STYLE_BERKELEY) {
				FUNC2();
				while ((scn = FUNC9(elf, scn)) != NULL) {
					if (FUNC11(scn, &shdr) != NULL)
						FUNC0(&shdr);
				}
			} else {
				FUNC15(name, arhdr);
				scn = NULL;
				while ((scn = FUNC9(elf, scn)) != NULL) {
					if (FUNC11(scn, &shdr) !=	NULL)
						FUNC13(elf, &elfhdr, &shdr);
				}
			}
			if (style == STYLE_BERKELEY) {
				if (arhdr != NULL) {
					FUNC1(name, arhdr->ar_name,
					    "ex");
				} else {
					FUNC1(name, NULL, "ex");
				}
			} else {
				FUNC14();
			}
		}
		elf_cmd = FUNC8(elf);
		(void) FUNC5(elf);
	}
	(void) FUNC5(elf1);
	(void) FUNC3(fd);
	return (RETURN_OK);
}