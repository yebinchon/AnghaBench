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
struct reiserfs_de_head {int dummy; } ;
struct item_head {int dummy; } ;
typedef  int /*<<< orphan*/  namebuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct item_head*) ; 
 scalar_t__ FUNC3 (struct reiserfs_de_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct reiserfs_de_head*) ; 
 int FUNC5 (struct reiserfs_de_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct reiserfs_de_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct reiserfs_de_head*) ; 
 int FUNC8 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 

__attribute__((used)) static void FUNC13(struct item_head *ih, char *item)
{
	int i;
	int namelen;
	struct reiserfs_de_head *deh;
	char *name;
	static char namebuf[80];

	FUNC10("\n # %-15s%-30s%-15s%-15s%-15s\n", "Name",
	       "Key of pointed object", "Hash", "Gen number", "Status");

	deh = (struct reiserfs_de_head *)item;

	for (i = 0; i < FUNC2(ih); i++, deh++) {
		namelen =
		    (i ? (FUNC5(deh - 1)) : FUNC8(ih)) -
		    FUNC5(deh);
		name = item + FUNC5(deh);
		if (name[namelen - 1] == 0)
			namelen = FUNC11(name);
		namebuf[0] = '"';
		if (namelen > sizeof(namebuf) - 3) {
			FUNC12(namebuf + 1, name, sizeof(namebuf) - 3);
			namebuf[sizeof(namebuf) - 2] = '"';
			namebuf[sizeof(namebuf) - 1] = 0;
		} else {
			FUNC9(namebuf + 1, name, namelen);
			namebuf[namelen + 1] = '"';
			namebuf[namelen + 2] = 0;
		}

		FUNC10("%d:  %-15s%-15d%-15d%-15Ld%-15Ld(%s)\n",
		       i, namebuf,
		       FUNC4(deh), FUNC6(deh),
		       FUNC1(FUNC7(deh)),
		       FUNC0((FUNC7(deh))),
		       (FUNC3(deh)) ? "HIDDEN" : "VISIBLE");
	}
}