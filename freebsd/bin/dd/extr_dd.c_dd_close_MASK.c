#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ dbcnt; scalar_t__ dbsz; scalar_t__ seek_offset; int flags; int /*<<< orphan*/  name; int /*<<< orphan*/  fd; int /*<<< orphan*/  dbp; } ;

/* Variables and functions */
 int C_BLOCK ; 
 int C_FDATASYNC ; 
 int C_FILL ; 
 int C_FSYNC ; 
 int C_OSYNC ; 
 int C_UNBLOCK ; 
 int ISTRUNC ; 
 scalar_t__ block ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ cfunc ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ddflags ; 
 scalar_t__ def ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 char fill_char ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char,scalar_t__) ; 
 TYPE_1__ out ; 
 scalar_t__ pending ; 
 scalar_t__ unblock ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void
FUNC9(void)
{
	if (cfunc == def)
		FUNC2();
	else if (cfunc == block)
		FUNC0();
	else if (cfunc == unblock)
		FUNC8();
	if (ddflags & C_OSYNC && out.dbcnt && out.dbcnt < out.dbsz) {
		if (ddflags & C_FILL)
			FUNC7(out.dbp, fill_char, out.dbsz - out.dbcnt);
		else if (ddflags & (C_BLOCK | C_UNBLOCK))
			FUNC7(out.dbp, ' ', out.dbsz - out.dbcnt);
		else
			FUNC7(out.dbp, 0, out.dbsz - out.dbcnt);
		out.dbcnt = out.dbsz;
	}
	if (out.dbcnt || pending)
		FUNC1(1);

	/*
	 * If the file ends with a hole, ftruncate it to extend its size
	 * up to the end of the hole (without having to write any data).
	 */
	if (out.seek_offset > 0 && (out.flags & ISTRUNC)) {
		if (FUNC6(out.fd, out.seek_offset) == -1)
			FUNC3(1, "truncating %s", out.name);
	}

	if (ddflags & C_FSYNC) {
		if (FUNC5(out.fd) == -1)
			FUNC3(1, "fsyncing %s", out.name);
	} else if (ddflags & C_FDATASYNC) {
		if (FUNC4(out.fd) == -1)
			FUNC3(1, "fdatasyncing %s", out.name);
	}
}