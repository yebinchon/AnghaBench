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
struct elfcopy {int /*<<< orphan*/ * ein; scalar_t__ rela_off; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
struct ar_obj {char* buf; int /*<<< orphan*/  mtime; int /*<<< orphan*/  md; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/ * name; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ARCHIVE_EOF ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_RETRY ; 
 int ARCHIVE_WARN ; 
 scalar_t__ ELF_K_ELF ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 char* FUNC5 (struct archive_entry*) ; 
 size_t FUNC6 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 scalar_t__ FUNC10 (struct archive*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*) ; 
 struct archive* FUNC12 () ; 
 int FUNC13 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int FUNC22 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (struct elfcopy*,struct ar_obj*) ; 
 scalar_t__ FUNC25 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC26 (char const*) ; 
 int /*<<< orphan*/  FUNC27 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC28(struct elfcopy *ecp, int ifd)
{
	struct archive		*a;
	struct archive_entry	*entry;
	struct ar_obj		*obj;
	const char		*name;
	char			*buff;
	size_t			 size;
	int			 r;

	ecp->rela_off = 0;
	if (FUNC22(ifd, 0, SEEK_SET) == -1)
		FUNC19(EXIT_FAILURE, "lseek failed");
	if ((a = FUNC12()) == NULL)
		FUNC20(EXIT_FAILURE, "archive_read_new failed");
	FUNC15(a);
	FUNC0(FUNC14(a, ifd, 10240));
	for(;;) {
		r = FUNC13(a, &entry);
		if (r == ARCHIVE_FATAL)
			FUNC20(EXIT_FAILURE, "%s", FUNC8(a));
		if (r == ARCHIVE_EOF)
			break;
		if (r == ARCHIVE_WARN || r == ARCHIVE_RETRY)
			FUNC27("%s", FUNC8(a));
		if (r == ARCHIVE_RETRY)
			continue;

		name = FUNC5(entry);

		/* skip pseudo members. */
		if (FUNC25(name, "/") == 0 || FUNC25(name, "//") == 0)
			continue;

		size = FUNC6(entry);

		if (size > 0) {
			if ((buff = FUNC23(size)) == NULL)
				FUNC19(EXIT_FAILURE, "malloc failed");
			if (FUNC10(a, buff, size) != (ssize_t)size) {
				FUNC27("%s", FUNC8(a));
				FUNC21(buff);
				continue;
			}
			if ((obj = FUNC23(sizeof(*obj))) == NULL)
				FUNC19(EXIT_FAILURE, "malloc failed");
			if ((obj->name = FUNC26(name)) == NULL)
				FUNC19(EXIT_FAILURE, "strdup failed");
			obj->buf = buff;
			obj->uid = FUNC7(entry);
			obj->gid = FUNC2(entry);
			obj->md = FUNC3(entry);
			obj->mtime = FUNC4(entry);
			if ((ecp->ein = FUNC18(buff, size)) == NULL)
				FUNC20(EXIT_FAILURE, "elf_memory() failed: %s",
				    FUNC16(-1));
			if (FUNC17(ecp->ein) != ELF_K_ELF)
				FUNC20(EXIT_FAILURE,
				    "file format not recognized");
			FUNC24(ecp, obj);
		}
	}
	FUNC0(FUNC9(a));
	FUNC1(FUNC11(a));
}