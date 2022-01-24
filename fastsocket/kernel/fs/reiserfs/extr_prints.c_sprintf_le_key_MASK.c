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
struct reiserfs_key {int /*<<< orphan*/  k_objectid; int /*<<< orphan*/  k_dir_id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct reiserfs_key*) ; 
 char* FUNC2 (struct reiserfs_key*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 

__attribute__((used)) static void FUNC4(char *buf, struct reiserfs_key *key)
{
	if (key)
		FUNC3(buf, "[%d %d %s %s]", FUNC0(key->k_dir_id),
			FUNC0(key->k_objectid), FUNC1(key),
			FUNC2(key));
	else
		FUNC3(buf, "[NULL]");
}