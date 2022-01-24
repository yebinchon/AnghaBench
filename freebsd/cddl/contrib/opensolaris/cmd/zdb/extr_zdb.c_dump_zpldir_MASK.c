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
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_3__ {char* za_name; int /*<<< orphan*/  za_first_integer; } ;
typedef  TYPE_1__ zap_attribute_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC8(objset_t *os, uint64_t object, void *data, size_t size)
{
	zap_cursor_t zc;
	zap_attribute_t attr;
	const char *typenames[] = {
		/* 0 */ "not specified",
		/* 1 */ "FIFO",
		/* 2 */ "Character Device",
		/* 3 */ "3 (invalid)",
		/* 4 */ "Directory",
		/* 5 */ "5 (invalid)",
		/* 6 */ "Block Device",
		/* 7 */ "7 (invalid)",
		/* 8 */ "Regular File",
		/* 9 */ "9 (invalid)",
		/* 10 */ "Symbolic Link",
		/* 11 */ "11 (invalid)",
		/* 12 */ "Socket",
		/* 13 */ "Door",
		/* 14 */ "Event Port",
		/* 15 */ "15 (invalid)",
	};

	FUNC2(os, object);
	(void) FUNC3("\n");

	for (FUNC6(&zc, os, object);
	    FUNC7(&zc, &attr) == 0;
	    FUNC4(&zc)) {
		(void) FUNC3("\t\t%s = %lld (type: %s)\n",
		    attr.za_name, FUNC0(attr.za_first_integer),
		    typenames[FUNC1(attr.za_first_integer)]);
	}
	FUNC5(&zc);
}