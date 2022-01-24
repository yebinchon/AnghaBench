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
typedef  int u_int ;
typedef  int /*<<< orphan*/  cap_rights_t ;
struct TYPE_6__ {char* name; int fd; int flags; int dbsz; int offset; int /*<<< orphan*/ * db; int /*<<< orphan*/ * dbp; } ;
struct TYPE_5__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_FSYNC ; 
 int /*<<< orphan*/  CAP_FTRUNCATE ; 
 int /*<<< orphan*/  CAP_IOCTL ; 
 int /*<<< orphan*/  CAP_READ ; 
 int /*<<< orphan*/  CAP_SEEK ; 
 int /*<<< orphan*/  CAP_WRITE ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int C_ASCII ; 
 int C_BLOCK ; 
 int C_EBCDIC ; 
 int C_FDATASYNC ; 
 int C_FSYNC ; 
 int C_LCASE ; 
 int C_NOTRUNC ; 
 int C_OF ; 
 int C_OFSYNC ; 
 int C_PAREVEN ; 
 int C_PARITY ; 
 int C_PARODD ; 
 int C_PARSET ; 
 int C_SEEK ; 
 int C_UCASE ; 
 int C_UNBLOCK ; 
 int /*<<< orphan*/  DEFFILEMODE ; 
 unsigned long FIODTYPE ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int ISTAPE ; 
 int ISTRUNC ; 
 int FUNC0 (size_t,int) ; 
 unsigned long MTIOCTOP ; 
 int NOREAD ; 
 int O_CREAT ; 
 int O_FSYNC ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int FUNC4 (int,unsigned long*,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int FUNC8 (int,int /*<<< orphan*/ *) ; 
 int* casetab ; 
 int cbsz ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int* ctab ; 
 int ddflags ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 
 int FUNC12 (int,int /*<<< orphan*/ ,...) ; 
 int files_cnt ; 
 int FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 TYPE_2__ in ; 
 void* FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (unsigned long*) ; 
 void* FUNC17 (char*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__ out ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 TYPE_1__ st ; 
 int FUNC21 (int) ; 
 int FUNC22 (int) ; 

__attribute__((used)) static void
FUNC23(void)
{
	u_int cnt;
	int oflags;
	cap_rights_t rights;
	unsigned long cmds[] = { FIODTYPE, MTIOCTOP };

	if (in.name == NULL) {
		in.name = "stdin";
		in.fd = STDIN_FILENO;
	} else {
		in.fd = FUNC17(in.name, O_RDONLY, 0);
		if (in.fd == -1)
			FUNC10(1, "%s", in.name);
	}

	FUNC14(&in);

	FUNC2(&rights, CAP_READ, CAP_SEEK);
	if (FUNC8(in.fd, &rights) == -1)
		FUNC10(1, "unable to limit capability rights");

	if (files_cnt > 1 && !(in.flags & ISTAPE))
		FUNC11(1, "files is not supported for non-tape devices");

	FUNC3(&rights, CAP_FTRUNCATE, CAP_IOCTL, CAP_WRITE);
	if (ddflags & (C_FDATASYNC | C_FSYNC))
		FUNC3(&rights, CAP_FSYNC);
	if (out.name == NULL) {
		/* No way to check for read access here. */
		out.fd = STDOUT_FILENO;
		out.name = "stdout";
		if (ddflags & C_OFSYNC) {
			oflags = FUNC12(out.fd, F_GETFL);
			if (oflags == -1)
				FUNC10(1, "unable to get fd flags for stdout");
			oflags |= O_FSYNC;
			if (FUNC12(out.fd, F_SETFL, oflags) == -1)
				FUNC10(1, "unable to set fd flags for stdout");
		}
	} else {
		oflags = O_CREAT;
		if (!(ddflags & (C_SEEK | C_NOTRUNC)))
			oflags |= O_TRUNC;
		if (ddflags & C_OFSYNC)
			oflags |= O_FSYNC;
		out.fd = FUNC17(out.name, O_RDWR | oflags, DEFFILEMODE);
		/*
		 * May not have read access, so try again with write only.
		 * Without read we may have a problem if output also does
		 * not support seeks.
		 */
		if (out.fd == -1) {
			out.fd = FUNC17(out.name, O_WRONLY | oflags, DEFFILEMODE);
			out.flags |= NOREAD;
			FUNC1(&rights, CAP_READ);
		}
		if (out.fd == -1)
			FUNC10(1, "%s", out.name);
	}

	FUNC14(&out);

	if (FUNC8(out.fd, &rights) == -1)
		FUNC10(1, "unable to limit capability rights");
	if (FUNC4(out.fd, cmds, FUNC16(cmds)) == -1)
		FUNC10(1, "unable to limit capability rights");

	if (in.fd != STDIN_FILENO && out.fd != STDIN_FILENO) {
		if (FUNC6() == -1)
			FUNC10(1, "unable to limit capability rights");
	}

	if (in.fd != STDOUT_FILENO && out.fd != STDOUT_FILENO) {
		if (FUNC7() == -1)
			FUNC10(1, "unable to limit capability rights");
	}

	if (in.fd != STDERR_FILENO && out.fd != STDERR_FILENO) {
		if (FUNC5() == -1)
			FUNC10(1, "unable to limit capability rights");
	}

	/*
	 * Allocate space for the input and output buffers.  If not doing
	 * record oriented I/O, only need a single buffer.
	 */
	if (!(ddflags & (C_BLOCK | C_UNBLOCK))) {
		if ((in.db = FUNC15((size_t)out.dbsz + in.dbsz - 1)) == NULL)
			FUNC10(1, "input buffer");
		out.db = in.db;
	} else if ((in.db = FUNC15(FUNC0((size_t)in.dbsz, cbsz) + cbsz)) == NULL ||
	    (out.db = FUNC15(out.dbsz + cbsz)) == NULL)
		FUNC10(1, "output buffer");

	/* dbp is the first free position in each buffer. */
	in.dbp = in.db;
	out.dbp = out.db;

	/* Position the input/output streams. */
	if (in.offset)
		FUNC19();
	if (out.offset)
		FUNC20();

	/*
	 * Truncate the output file.  If it fails on a type of output file
	 * that it should _not_ fail on, error out.
	 */
	if ((ddflags & (C_OF | C_SEEK | C_NOTRUNC)) == (C_OF | C_SEEK) &&
	    out.flags & ISTRUNC)
		if (FUNC13(out.fd, out.offset * out.dbsz) == -1)
			FUNC10(1, "truncating %s", out.name);

	if (ddflags & (C_LCASE  | C_UCASE | C_ASCII | C_EBCDIC | C_PARITY)) {
		if (ctab != NULL) {
			for (cnt = 0; cnt <= 0377; ++cnt)
				casetab[cnt] = ctab[cnt];
		} else {
			for (cnt = 0; cnt <= 0377; ++cnt)
				casetab[cnt] = cnt;
		}
		if ((ddflags & C_PARITY) && !(ddflags & C_ASCII)) {
			/*
			 * If the input is not EBCDIC, and we do parity
			 * processing, strip input parity.
			 */
			for (cnt = 200; cnt <= 0377; ++cnt)
				casetab[cnt] = casetab[cnt & 0x7f];
		}
		if (ddflags & C_LCASE) {
			for (cnt = 0; cnt <= 0377; ++cnt)
				casetab[cnt] = FUNC21(casetab[cnt]);
		} else if (ddflags & C_UCASE) {
			for (cnt = 0; cnt <= 0377; ++cnt)
				casetab[cnt] = FUNC22(casetab[cnt]);
		}
		if ((ddflags & C_PARITY)) {
			/*
			 * This should strictly speaking be a no-op, but I
			 * wonder what funny LANG settings could get us.
			 */
			for (cnt = 0; cnt <= 0377; ++cnt)
				casetab[cnt] = casetab[cnt] & 0x7f;
		}
		if ((ddflags & C_PARSET)) {
			for (cnt = 0; cnt <= 0377; ++cnt)
				casetab[cnt] = casetab[cnt] | 0x80;
		}
		if ((ddflags & C_PAREVEN)) {
			for (cnt = 0; cnt <= 0377; ++cnt)
				if (FUNC18(casetab[cnt]))
					casetab[cnt] = casetab[cnt] | 0x80;
		}
		if ((ddflags & C_PARODD)) {
			for (cnt = 0; cnt <= 0377; ++cnt)
				if (!FUNC18(casetab[cnt]))
					casetab[cnt] = casetab[cnt] | 0x80;
		}

		ctab = casetab;
	}

	if (FUNC9(CLOCK_MONOTONIC, &st.start))
		FUNC10(1, "clock_gettime");
}