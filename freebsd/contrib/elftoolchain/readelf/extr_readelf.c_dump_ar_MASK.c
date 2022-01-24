#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char* uintmax_t ;
struct readelf {int options; char* filename; int /*<<< orphan*/ * ar; int /*<<< orphan*/ * elf; } ;
typedef  scalar_t__ off_t ;
struct TYPE_6__ {char* ar_name; } ;
struct TYPE_5__ {char* as_name; scalar_t__ as_off; } ;
typedef  int /*<<< orphan*/  Elf_Cmd ;
typedef  TYPE_1__ Elf_Arsym ;
typedef  TYPE_2__ Elf_Arhdr ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ELF_C_READ ; 
 int RE_C ; 
 scalar_t__ SARMAG ; 
 int /*<<< orphan*/  FUNC0 (struct readelf*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct readelf *re, int fd)
{
	Elf_Arsym *arsym;
	Elf_Arhdr *arhdr;
	Elf_Cmd cmd;
	Elf *e;
	size_t sz;
	off_t off;
	int i;

	re->ar = re->elf;

	if (re->options & RE_C) {
		if ((arsym = FUNC5(re->ar, &sz)) == NULL) {
			FUNC10("elf_getarsym() failed: %s", FUNC3(-1));
			goto process_members;
		}
		FUNC8("Index of archive %s: (%ju entries)\n", re->filename,
		    (uintmax_t) sz - 1);
		off = 0;
		for (i = 0; (size_t) i < sz; i++) {
			if (arsym[i].as_name == NULL)
				break;
			if (arsym[i].as_off != off) {
				off = arsym[i].as_off;
				if (FUNC7(re->ar, off) != off) {
					FUNC10("elf_rand() failed: %s",
					    FUNC3(-1));
					continue;
				}
				if ((e = FUNC1(fd, ELF_C_READ, re->ar)) ==
				    NULL) {
					FUNC10("elf_begin() failed: %s",
					    FUNC3(-1));
					continue;
				}
				if ((arhdr = FUNC4(e)) == NULL) {
					FUNC10("elf_getarhdr() failed: %s",
					    FUNC3(-1));
					FUNC2(e);
					continue;
				}
				FUNC8("Binary %s(%s) contains:\n",
				    re->filename, arhdr->ar_name);
			}
			FUNC8("\t%s\n", arsym[i].as_name);
		}
		if (FUNC7(re->ar, SARMAG) != SARMAG) {
			FUNC10("elf_rand() failed: %s", FUNC3(-1));
			return;
		}
	}

process_members:

	if ((re->options & ~RE_C) == 0)
		return;

	cmd = ELF_C_READ;
	while ((re->elf = FUNC1(fd, cmd, re->ar)) != NULL) {
		if ((arhdr = FUNC4(re->elf)) == NULL) {
			FUNC10("elf_getarhdr() failed: %s", FUNC3(-1));
			goto next_member;
		}
		if (FUNC9(arhdr->ar_name, "/") == 0 ||
		    FUNC9(arhdr->ar_name, "//") == 0 ||
		    FUNC9(arhdr->ar_name, "__.SYMDEF") == 0)
			goto next_member;
		FUNC8("\nFile: %s(%s)\n", re->filename, arhdr->ar_name);
		FUNC0(re);

	next_member:
		cmd = FUNC6(re->elf);
		FUNC2(re->elf);
	}
	re->elf = re->ar;
}