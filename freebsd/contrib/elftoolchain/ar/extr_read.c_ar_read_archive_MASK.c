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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uid_t ;
typedef  scalar_t__ time_t ;
struct tm {int dummy; } ;
struct stat {scalar_t__ st_mtime; } ;
struct bsdar {char const* filename; int options; int argc; char** argv; int /*<<< orphan*/ * output; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  int gid_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ARCHIVE_EOF ; 
 int ARCHIVE_EXTRACT_SECURE_NODOTDOT ; 
 int ARCHIVE_EXTRACT_SECURE_SYMLINKS ; 
 int ARCHIVE_EXTRACT_TIME ; 
 int ARCHIVE_FATAL ; 
 scalar_t__ ARCHIVE_FORMAT_AR_BSD ; 
 int ARCHIVE_RETRY ; 
 int ARCHIVE_WARN ; 
 int AR_BSD ; 
 int AR_CC ; 
 int AR_O ; 
 int AR_U ; 
 int AR_V ; 
 int /*<<< orphan*/  DEF_BLKSZ ; 
 scalar_t__ ENOENT ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 scalar_t__ FUNC4 (struct archive_entry*) ; 
 char* FUNC5 (struct archive_entry*) ; 
 size_t FUNC6 (struct archive_entry*) ; 
 int FUNC7 (struct archive_entry*) ; 
 char const* FUNC8 (struct archive*) ; 
 scalar_t__ FUNC9 (struct archive*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*) ; 
 int FUNC11 (struct archive*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct archive*) ; 
 int FUNC13 (struct archive*,struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*) ; 
 struct archive* FUNC15 () ; 
 int FUNC16 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct archive*) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 char* FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (struct bsdar*,scalar_t__,char*) ; 
 scalar_t__ FUNC22 (struct bsdar*,char const*) ; 
 char* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct bsdar*,scalar_t__,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,char*,...) ; 
 struct tm* FUNC28 (scalar_t__*) ; 
 scalar_t__ FUNC29 (char const*,struct stat*) ; 
 scalar_t__ FUNC30 (char const*,char) ; 
 scalar_t__ FUNC31 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC32 (char*,int,char*,struct tm*) ; 

int
FUNC33(struct bsdar *bsdar, int mode)
{
	FILE			 *out;
	struct archive		 *a;
	struct archive_entry	 *entry;
	struct stat		  sb;
	struct tm		 *tp;
	const char		 *bname;
	const char		 *name;
	mode_t			  md;
	size_t			  size;
	time_t			  mtime;
	uid_t			  uid;
	gid_t			  gid;
	char			**av;
	char			  buf[25];
	int			  found;
	int			  exitcode, i, flags, r;

	FUNC19(mode == 'p' || mode == 't' || mode == 'x');

	if ((a = FUNC15()) == NULL)
		FUNC21(bsdar, 0, "archive_read_new failed");
	FUNC18(a);
	FUNC0(FUNC17(a, bsdar->filename, DEF_BLKSZ));

	exitcode = EXIT_SUCCESS;
	out = bsdar->output;

	for (;;) {
		r = FUNC16(a, &entry);
		if (r == ARCHIVE_WARN || r == ARCHIVE_RETRY ||
		    r == ARCHIVE_FATAL)
			FUNC24(bsdar, 0, "%s", FUNC8(a));
		if (r == ARCHIVE_EOF || r == ARCHIVE_FATAL)
			break;
		if (r == ARCHIVE_RETRY) {
			FUNC24(bsdar, 0, "Retrying...");
			continue;
		}

		if (FUNC9(a) == ARCHIVE_FORMAT_AR_BSD)
			bsdar->options |= AR_BSD;
		else
			bsdar->options &= ~AR_BSD;

		if ((name = FUNC5(entry)) == NULL)
			break;

		/* Skip pseudo members. */
		if (FUNC22(bsdar, name))
			continue;

		/* The ar(5) format only supports 'leaf' file names. */
		if (FUNC30(name, '/')) {
			FUNC24(bsdar, 0, "ignoring entry: %s",
			    name);
			continue;
		}

		/*
		 * If we had been given a list of file names to process, check
		 * that the current entry is present in this list.
		 */
		if (bsdar->argc > 0) {
			found = 0;
			for(i = 0; i < bsdar->argc; i++) {
				av = &bsdar->argv[i];
				if (*av == NULL)
					continue;
				/*
				 * Per POSIX, only the basename of a file
				 * argument should be compared.
				 */
				if ((bname = FUNC20(*av)) == NULL)
					FUNC21(bsdar, errno,
					    "basename failed");
				if (FUNC31(bname, name) != 0)
					continue;

				*av = NULL;
				found = 1;
				break;
			}
			if (!found)
				continue;
		}

		if (mode == 't') {
			if (bsdar->options & AR_V) {
				md = FUNC3(entry);
				uid = FUNC7(entry);
				gid = FUNC2(entry);
				size = FUNC6(entry);
				mtime = FUNC4(entry);
				(void)FUNC27(out, "%s %6d/%-6d %8ju ",
				    FUNC23(md) + 1, uid, gid,
				    (uintmax_t)size);
				tp = FUNC28(&mtime);
				(void)FUNC32(buf, sizeof(buf),
				    "%b %e %H:%M %Y", tp);
				(void)FUNC27(out, "%s %s", buf, name);
			} else
				(void)FUNC27(out, "%s", name);
			r = FUNC12(a);
			if (r == ARCHIVE_WARN || r == ARCHIVE_RETRY ||
			    r == ARCHIVE_FATAL) {
				(void)FUNC27(out, "\n");
				FUNC24(bsdar, 0, "%s",
				    FUNC8(a));
			}

			if (r == ARCHIVE_FATAL)
				break;

			(void)FUNC27(out, "\n");
		} else {
			/* mode == 'x' || mode = 'p' */
			if (mode == 'p') {
				if (bsdar->options & AR_V) {
					(void)FUNC27(out, "\n<%s>\n\n",
					    name);
					FUNC25(out);
				}
				r = FUNC11(a, FUNC26(out));
			} else {
				/* mode == 'x' */
				if (FUNC29(name, &sb) != 0) {
					if (errno != ENOENT) {
						FUNC24(bsdar, errno,
						    "stat %s failed",
						    bsdar->filename);
						continue;
					}
				} else {
					/* stat success, file exist */
					if (bsdar->options & AR_CC)
						continue;
					if (bsdar->options & AR_U &&
					    FUNC4(entry) <=
					    sb.st_mtime)
						continue;
				}

				if (bsdar->options & AR_V)
					(void)FUNC27(out, "x - %s\n", name);
				/* Basic path security flags. */
				flags = ARCHIVE_EXTRACT_SECURE_SYMLINKS |
	 			    ARCHIVE_EXTRACT_SECURE_NODOTDOT;
				if (bsdar->options & AR_O)
					flags |= ARCHIVE_EXTRACT_TIME;

				r = FUNC13(a, entry, flags);
			}

			if (r) {
				FUNC24(bsdar, 0, "%s",
				    FUNC8(a));
				exitcode = EXIT_FAILURE;
			}
		}
	}

	if (r == ARCHIVE_FATAL)
		exitcode = EXIT_FAILURE;

	FUNC0(FUNC10(a));
	FUNC1(FUNC14(a));

	return (exitcode);
}