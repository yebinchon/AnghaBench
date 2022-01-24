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
struct super_block {int /*<<< orphan*/ * s_fs_info; } ;
struct smb_sb_info {scalar_t__ conn_pid; struct smb_sb_info* ops; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONN_INVALID ; 
 int /*<<< orphan*/  SIGTERM ; 
 struct smb_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_sb_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct smb_sb_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_sb_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_sb_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct smb_sb_info*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void
FUNC11(struct super_block *sb)
{
	struct smb_sb_info *server = FUNC0(sb);

	FUNC3();

	FUNC6(server);
	server->state = CONN_INVALID;
	FUNC9(server);

	FUNC5(server);

	if (server->conn_pid)
		FUNC2(server->conn_pid, SIGTERM, 1);

	FUNC1(server->ops);
	FUNC7(server);
	sb->s_fs_info = NULL;
	FUNC8(server);
	FUNC4(server->conn_pid);
	FUNC1(server);

	FUNC10();
}