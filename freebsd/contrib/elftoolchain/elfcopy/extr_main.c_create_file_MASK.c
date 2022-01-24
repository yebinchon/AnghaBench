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
struct stat {int st_nlink; int /*<<< orphan*/  st_mode; } ;
struct elfcopy {scalar_t__ itf; scalar_t__ otf; scalar_t__ oec; scalar_t__ oed; int flags; int /*<<< orphan*/ * ein; int /*<<< orphan*/ * eout; } ;

/* Variables and functions */
 scalar_t__ ELFCLASS64 ; 
 scalar_t__ ELFCLASSNONE ; 
 scalar_t__ ELFDATA2LSB ; 
 scalar_t__ ELFDATANONE ; 
 int /*<<< orphan*/  ELF_C_READ ; 
 int /*<<< orphan*/  ELF_C_SET ; 
 int /*<<< orphan*/  ELF_C_WRITE ; 
 int /*<<< orphan*/  ELF_F_LAYOUT ; 
#define  ELF_K_AR 135 
#define  ELF_K_ELF 134 
#define  ELF_K_NONE 133 
#define  ETF_BINARY 132 
#define  ETF_EFI 131 
 scalar_t__ ETF_ELF ; 
#define  ETF_IHEX 130 
#define  ETF_PE 129 
#define  ETF_SREC 128 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_RDWR ; 
 int PRESERVE_DATE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct elfcopy*,int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,char const*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct elfcopy*) ; 
 int /*<<< orphan*/  FUNC7 (struct elfcopy*,int,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct elfcopy*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct elfcopy*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct elfcopy*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct elfcopy*,int,int,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char**,int*) ; 
 void* FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC22 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int FUNC24 (int,struct stat*) ; 
 scalar_t__ FUNC25 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC26 (char const*,struct stat*) ; 
 int FUNC27 (char const*,int,...) ; 
 scalar_t__ FUNC28 (char const*,char*) ; 
 scalar_t__ FUNC29 (char*) ; 

__attribute__((used)) static void
FUNC30(struct elfcopy *ecp, const char *src, const char *dst)
{
	struct stat	 sb;
	char		*tempfile, *elftemp;
	int		 efd, ifd, ofd, ofd0, tfd;
	int		 in_place;

	tempfile = NULL;

	if (src == NULL)
		FUNC21(EXIT_FAILURE, "internal: src == NULL");
	if ((ifd = FUNC27(src, O_RDONLY)) == -1)
		FUNC20(EXIT_FAILURE, "open %s failed", src);

	if (FUNC24(ifd, &sb) == -1)
		FUNC20(EXIT_FAILURE, "fstat %s failed", src);

	if (dst == NULL)
		FUNC13(&tempfile, &ofd);
	else
		if ((ofd = FUNC27(dst, O_RDWR|O_CREAT, 0755)) == -1)
			FUNC20(EXIT_FAILURE, "open %s failed", dst);

#ifndef LIBELF_AR
	/* Detect and process ar(1) archive using libarchive. */
	if (FUNC2(ifd)) {
		FUNC1(ecp, ifd, ofd);
		goto copy_done;
	}
#endif

	if (FUNC25(ifd, 0, SEEK_SET) < 0)
		FUNC20(EXIT_FAILURE, "lseek failed");

	/*
	 * If input object is not ELF file, convert it to an intermediate
	 * ELF object before processing.
	 */
	if (ecp->itf != ETF_ELF) {
		/*
		 * If the output object is not an ELF file, choose an arbitrary
		 * ELF format for the intermediate file. srec, ihex and binary
		 * formats are independent of class, endianness and machine
		 * type so these choices do not affect the output.
		 */
		if (ecp->otf != ETF_ELF) {
			if (ecp->oec == ELFCLASSNONE)
				ecp->oec = ELFCLASS64;
			if (ecp->oed == ELFDATANONE)
				ecp->oed = ELFDATA2LSB;
		}
		FUNC13(&elftemp, &efd);
		if ((ecp->eout = FUNC14(efd, ELF_C_WRITE, NULL)) == NULL)
			FUNC21(EXIT_FAILURE, "elf_begin() failed: %s",
			    FUNC16(-1));
		FUNC17(ecp->eout, ELF_C_SET, ELF_F_LAYOUT);
		if (ecp->itf == ETF_BINARY)
			FUNC7(ecp, ifd, src);
		else if (ecp->itf == ETF_IHEX)
			FUNC8(ecp, ifd);
		else if (ecp->itf == ETF_SREC)
			FUNC9(ecp, ifd);
		else
			FUNC21(EXIT_FAILURE, "Internal: invalid target flavour");
		FUNC15(ecp->eout);

		/* Open intermediate ELF object as new input object. */
		FUNC3(ifd);
		if ((ifd = FUNC27(elftemp, O_RDONLY)) == -1)
			FUNC20(EXIT_FAILURE, "open %s failed", src);
		FUNC3(efd);
		if (FUNC29(elftemp) < 0)
			FUNC20(EXIT_FAILURE, "unlink %s failed", elftemp);
		FUNC23(elftemp);
	}

	if ((ecp->ein = FUNC14(ifd, ELF_C_READ, NULL)) == NULL)
		FUNC21(EXIT_FAILURE, "elf_begin() failed: %s",
		    FUNC16(-1));

	switch (FUNC18(ecp->ein)) {
	case ELF_K_NONE:
		FUNC21(EXIT_FAILURE, "file format not recognized");
	case ELF_K_ELF:
		if ((ecp->eout = FUNC14(ofd, ELF_C_WRITE, NULL)) == NULL)
			FUNC21(EXIT_FAILURE, "elf_begin() failed: %s",
			    FUNC16(-1));

		/* elfcopy(1) manage ELF layout by itself. */
		FUNC17(ecp->eout, ELF_C_SET, ELF_F_LAYOUT);

		/*
		 * Create output ELF object.
		 */
		FUNC6(ecp);
		FUNC15(ecp->eout);

		/*
		 * Convert the output ELF object to binary/srec/ihex if need.
		 */
		if (ecp->otf != ETF_ELF) {
			/*
			 * Create (another) tempfile for binary/srec/ihex
			 * output object.
			 */
			if (tempfile != NULL) {
				if (FUNC29(tempfile) < 0)
					FUNC20(EXIT_FAILURE, "unlink %s failed",
					    tempfile);
				FUNC23(tempfile);
			}
			FUNC13(&tempfile, &ofd0);


			/*
			 * Rewind the file descriptor being processed.
			 */
			if (FUNC25(ofd, 0, SEEK_SET) < 0)
				FUNC20(EXIT_FAILURE,
				    "lseek failed for the output object");

			/*
			 * Call flavour-specific conversion routine.
			 */
			switch (ecp->otf) {
			case ETF_BINARY:
				FUNC5(ofd, ofd0);
				break;
			case ETF_IHEX:
				FUNC10(ofd, ofd0);
				break;
			case ETF_SREC:
				FUNC12(ecp, ofd, ofd0,
				    dst != NULL ? dst : src);
				break;
			case ETF_PE:
			case ETF_EFI:
#if	WITH_PE
				create_pe(ecp, ofd, ofd0);
#else
				FUNC21(EXIT_FAILURE, "PE/EFI support not enabled"
				    " at compile time");
#endif
				break;
			default:
				FUNC21(EXIT_FAILURE, "Internal: unsupported"
				    " output flavour %d", ecp->oec);
			}

			FUNC3(ofd);
			ofd = ofd0;
		}

		break;

	case ELF_K_AR:
		/* XXX: Not yet supported. */
		break;
	default:
		FUNC21(EXIT_FAILURE, "file format not supported");
	}

	FUNC15(ecp->ein);

#ifndef LIBELF_AR
copy_done:
#endif

	if (tempfile != NULL) {
		in_place = 0;
		if (dst == NULL) {
			dst = src;
			if (FUNC26(dst, &sb) != -1 &&
			    (sb.st_nlink > 1 || FUNC0(sb.st_mode)))
				in_place = 1;
		}

		if (FUNC4(tempfile, dst, ofd, &tfd, in_place) < 0)
			FUNC20(EXIT_FAILURE, "creation of %s failed", dst);

		FUNC23(tempfile);
		tempfile = NULL;

		ofd = tfd;
	}

	if (FUNC28(dst, "/dev/null") && FUNC22(ofd, sb.st_mode) == -1)
		FUNC20(EXIT_FAILURE, "fchmod %s failed", dst);

	if ((ecp->flags & PRESERVE_DATE) &&
	    FUNC19(dst, &sb) < 0)
		FUNC20(EXIT_FAILURE, "setting timestamps failed");

	FUNC3(ifd);
	FUNC3(ofd);
}