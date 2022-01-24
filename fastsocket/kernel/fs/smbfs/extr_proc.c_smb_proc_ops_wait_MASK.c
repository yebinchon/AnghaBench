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
struct smb_sb_info {int /*<<< orphan*/  conn_complete; int /*<<< orphan*/  conn_wq; } ;

/* Variables and functions */
 int EIO ; 
 int HZ ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct smb_sb_info *server)
{
	int result;

	result = FUNC1(server->conn_wq,
				server->conn_complete, 30*HZ);

	if (!result || FUNC0(current))
		return -EIO;

	return 0;
}