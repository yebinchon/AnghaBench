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

/* Variables and functions */
 int FUNC0 (struct reiserfs_de_head*) ; 
 int FUNC1 (struct reiserfs_de_head*) ; 
 int FUNC2 (struct reiserfs_de_head*) ; 
 int FUNC3 (struct reiserfs_de_head*) ; 
 int FUNC4 (struct reiserfs_de_head*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 

__attribute__((used)) static void FUNC6(char *buf, struct reiserfs_de_head *deh)
{
	if (deh)
		FUNC5(buf,
			"[offset=%d dir_id=%d objectid=%d location=%d state=%04x]",
			FUNC3(deh), FUNC0(deh), FUNC2(deh),
			FUNC1(deh), FUNC4(deh));
	else
		FUNC5(buf, "[NULL]");

}