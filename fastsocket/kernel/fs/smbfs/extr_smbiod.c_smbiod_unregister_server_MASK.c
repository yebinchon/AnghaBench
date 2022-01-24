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
struct smb_sb_info {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct smb_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  servers_lock ; 
 int /*<<< orphan*/  FUNC2 (struct smb_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct smb_sb_info *server)
{
	FUNC4(&servers_lock);
	FUNC1(&server->entry);
	FUNC0("%p\n", server);
	FUNC5(&servers_lock);

	FUNC3();
	FUNC2(server);
}