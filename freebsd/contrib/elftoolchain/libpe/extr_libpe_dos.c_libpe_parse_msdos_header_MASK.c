#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char uint32_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  coff ;
struct TYPE_7__ {int pe_flags; int pe_fsize; int pe_stub_ex; int /*<<< orphan*/  pe_fd; TYPE_1__* pe_dh; int /*<<< orphan*/ * pe_stub; } ;
struct TYPE_6__ {int dh_lastsize; int dh_nblock; int dh_nreloc; int dh_hdrsize; int dh_minalloc; int dh_maxalloc; int dh_ss; int dh_sp; int dh_checksum; int dh_ip; int dh_cs; int dh_relocpos; int dh_noverlay; int* dh_reserved1; int dh_oemid; int dh_oeminfo; int* dh_reserved2; int dh_lfanew; int /*<<< orphan*/ * dh_magic; } ;
typedef  TYPE_1__ PE_DosHdr ;
typedef  int /*<<< orphan*/  PE_CoffHdr ;
typedef  TYPE_2__ PE ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int LIBPE_F_BAD_COFF_HEADER ; 
 int LIBPE_F_BAD_DOS_HEADER ; 
 int LIBPE_F_BAD_PE_HEADER ; 
 int LIBPE_F_SPECIAL_FILE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ PE_SIGNATURE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (char) ; 
 int FUNC3 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC9(PE *pe, char *hdr)
{
	PE_DosHdr *dh;
	char coff[sizeof(PE_CoffHdr)];
	uint32_t pe_magic;
	int i;

	if ((pe->pe_stub = FUNC6(sizeof(PE_DosHdr))) == NULL) {
		errno = ENOMEM;
		return (-1);
	}
	FUNC7(pe->pe_stub, hdr, sizeof(PE_DosHdr));

	if ((dh = FUNC6(sizeof(*dh))) == NULL) {
		errno = ENOMEM;
		return (-1);
	}
	pe->pe_dh = dh;

	/* Read the conventional MS-DOS EXE header. */
	FUNC7(dh->dh_magic, hdr, 2);
	hdr += 2;
	FUNC0(hdr, dh->dh_lastsize);
	FUNC0(hdr, dh->dh_nblock);
	FUNC0(hdr, dh->dh_nreloc);
	FUNC0(hdr, dh->dh_hdrsize);
	FUNC0(hdr, dh->dh_minalloc);
	FUNC0(hdr, dh->dh_maxalloc);
	FUNC0(hdr, dh->dh_ss);
	FUNC0(hdr, dh->dh_sp);
	FUNC0(hdr, dh->dh_checksum);
	FUNC0(hdr, dh->dh_ip);
	FUNC0(hdr, dh->dh_cs);
	FUNC0(hdr, dh->dh_relocpos);
	FUNC0(hdr, dh->dh_noverlay);

	/* Do not continue if the EXE is not a PE/NE/... (new executable) */
	if (dh->dh_relocpos != 0x40) {
		pe->pe_flags |= LIBPE_F_BAD_DOS_HEADER;
		return (0);
	}

	for (i = 0; i < 4; i++)
		FUNC0(hdr, dh->dh_reserved1[i]);
	FUNC0(hdr, dh->dh_oemid);
	FUNC0(hdr, dh->dh_oeminfo);
	for (i = 0; i < 10; i++)
		FUNC0(hdr, dh->dh_reserved2[i]);
	FUNC1(hdr, dh->dh_lfanew);

	/* Check if the e_lfanew pointer is valid. */
	if (dh->dh_lfanew > pe->pe_fsize - 4) {
		pe->pe_flags |= LIBPE_F_BAD_DOS_HEADER;
		return (0);
	}

	if (dh->dh_lfanew < sizeof(PE_DosHdr) &&
	    (pe->pe_flags & LIBPE_F_SPECIAL_FILE)) {
		pe->pe_flags |= LIBPE_F_BAD_DOS_HEADER;
		return (0);
	}

	if (dh->dh_lfanew > sizeof(PE_DosHdr)) {
		pe->pe_stub_ex = dh->dh_lfanew - sizeof(PE_DosHdr);
		if (pe->pe_flags & LIBPE_F_SPECIAL_FILE) {
			/* Read in DOS stub now. */
			if (FUNC4(pe) < 0) {
				pe->pe_flags |= LIBPE_F_BAD_DOS_HEADER;
				return (0);
			}
		}
	}

	if ((pe->pe_flags & LIBPE_F_SPECIAL_FILE) == 0) {
		/* Jump to the PE header. */
		if (FUNC5(pe->pe_fd, (off_t) dh->dh_lfanew, SEEK_SET) < 0) {
			pe->pe_flags |= LIBPE_F_BAD_PE_HEADER;
			return (0);
		}
	}

	if (FUNC8(pe->pe_fd, &pe_magic, 4) != 4 ||
	    FUNC2(pe_magic) != PE_SIGNATURE) {
		pe->pe_flags |= LIBPE_F_BAD_PE_HEADER;
		return (0);
	}

	if (FUNC8(pe->pe_fd, coff, sizeof(coff)) != (ssize_t) sizeof(coff)) {
		pe->pe_flags |= LIBPE_F_BAD_COFF_HEADER;
		return (0);
	}

	return (FUNC3(pe, coff));
}