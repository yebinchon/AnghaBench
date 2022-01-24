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
typedef  int /*<<< orphan*/  tdata_t ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_3__ {int* e_ident; } ;
typedef  TYPE_1__ GElf_Ehdr ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int CTF_SWAP_BYTES ; 
 size_t EI_DATA ; 
 int ELFDATA2LSB ; 
 int ELFDATA2MSB ; 
 int /*<<< orphan*/  ELF_C_READ ; 
 int /*<<< orphan*/  ELF_C_WRITE ; 
 int /*<<< orphan*/  EV_CURRENT ; 
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,struct stat*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,size_t*,int) ; 
 int FUNC9 (char const*,int,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,size_t,int) ; 

void
FUNC12(tdata_t *td, const char *curname, const char *newname, int flags)
{
	struct stat st;
	Elf *elf = NULL;
	Elf *telf = NULL;
	GElf_Ehdr ehdr;
	caddr_t data;
	size_t len;
	int fd = -1;
	int tfd = -1;
	int byteorder;

	(void) FUNC3(EV_CURRENT);
	if ((fd = FUNC9(curname, O_RDONLY)) < 0 || FUNC6(fd, &st) < 0)
		FUNC10("%s: Cannot open for re-reading", curname);
	if ((elf = FUNC1(fd, ELF_C_READ, NULL)) == NULL)
		FUNC4(curname, "Cannot re-read");

	if ((tfd = FUNC9(newname, O_RDWR | O_CREAT | O_TRUNC, st.st_mode)) < 0)
		FUNC10("Cannot open temp file %s for writing", newname);
	if ((telf = FUNC1(tfd, ELF_C_WRITE, NULL)) == NULL)
		FUNC4(curname, "Cannot write");

	if (FUNC7(elf, &ehdr)) {
#if BYTE_ORDER == _BIG_ENDIAN
		byteorder = ELFDATA2MSB;
#else
		byteorder = ELFDATA2LSB;
#endif
		/*
		 * If target and host has the same byte order
		 * clear byte swapping request
		 */
		if  (ehdr.e_ident[EI_DATA] == byteorder)
			flags &= ~CTF_SWAP_BYTES;
	}
	else 
		FUNC4(curname, "Failed to get EHDR");

	data = FUNC8(td, elf, curname, &len, flags);
	FUNC11(elf, curname, telf, newname, data, len, flags);
	FUNC5(data);

	FUNC2(telf);
	FUNC2(elf);
	(void) FUNC0(fd);
	(void) FUNC0(tfd);
}