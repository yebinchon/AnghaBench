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
struct stat {size_t st_size; scalar_t__ st_gid; scalar_t__ st_uid; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int O_CREAT ; 
 int O_EXCL ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_WRONLY ; 
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 scalar_t__ FUNC2 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int,struct stat*) ; 
 char* g_etcbegin ; 
 char* g_etcend ; 
 char* g_etcfile ; 
 int FUNC8 () ; 
 char* FUNC9 (size_t) ; 
 int FUNC10 (char*,int,...) ; 
 size_t FUNC11 (int,char*,size_t) ; 
 int FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,size_t,char*,char*,int) ; 
 int FUNC14 (char*) ; 
 char* FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int FUNC17 (int,char*,int) ; 

__attribute__((used)) static void
FUNC18(void)
{
	struct stat sbuf;
	size_t sz;
	char *buf, *start, *end;
	int fd;
	char *fname = g_etcfile, *tmpname;

	if ((fd = FUNC10(fname, O_RDONLY)) == -1)
		FUNC5("failed to open %s", fname);

	if (FUNC7(fd, &sbuf) == -1)
		FUNC5("failed to fstat %s", fname);

	if ((buf = FUNC9((sz = sbuf.st_size) + 1)) == NULL)
		FUNC5("failed to allocate memory for %s", fname);

	if (FUNC11(fd, buf, sz) != sz)
		FUNC5("failed to read %s", fname);

	buf[sz] = '\0';
	(void) FUNC3(fd);

	if ((start = FUNC15(buf, g_etcbegin)) == NULL)
		goto out;

	if (FUNC14(buf) != sz) {
		FUNC5("embedded nul byte in %s; manual repair of %s "
		    "required\n", fname, fname);
	}

	if (FUNC15(start + 1, g_etcbegin) != NULL) {
		FUNC5("multiple start sentinels in %s; manual repair of %s "
		    "required\n", fname, fname);
	}

	if ((end = FUNC15(buf, g_etcend)) == NULL) {
		FUNC5("missing end sentinel in %s; manual repair of %s "
		    "required\n", fname, fname);
	}

	if (start > end) {
		FUNC5("end sentinel preceeds start sentinel in %s; manual "
		    "repair of %s required\n", fname, fname);
	}

	end += FUNC14(g_etcend) + 1;
	FUNC1(end, start, FUNC14(end) + 1);

	tmpname = FUNC0(sz = FUNC14(fname) + 80);
	(void) FUNC13(tmpname, sz, "%s.dtrace.%d", fname, FUNC8());

	if ((fd = FUNC10(tmpname,
	    O_WRONLY | O_CREAT | O_EXCL, sbuf.st_mode)) == -1)
		FUNC5("failed to create %s", tmpname);

	if (FUNC17(fd, buf, FUNC14(buf)) < FUNC14(buf)) {
		(void) FUNC16(tmpname);
		FUNC5("failed to write to %s", tmpname);
	}

	(void) FUNC3(fd);

	if (FUNC2(tmpname, sbuf.st_uid, sbuf.st_gid) != 0) {
		(void) FUNC16(tmpname);
		FUNC5("failed to chown(2) %s to uid %d, gid %d", tmpname,
		    (int)sbuf.st_uid, (int)sbuf.st_gid);
	}

	if (FUNC12(tmpname, fname) == -1)
		FUNC5("rename of %s to %s failed", tmpname, fname);

	FUNC4("cleaned up forceload directives in %s\n", fname);
out:
	FUNC6(buf);
}