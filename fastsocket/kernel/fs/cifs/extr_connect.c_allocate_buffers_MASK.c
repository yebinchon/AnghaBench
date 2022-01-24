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
struct TCP_Server_Info {char* bigbuf; char* smallbuf; scalar_t__ large_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static bool
FUNC6(struct TCP_Server_Info *server)
{
	if (!server->bigbuf) {
		server->bigbuf = (char *)FUNC1();
		if (!server->bigbuf) {
			FUNC0(1, "No memory for large SMB response");
			FUNC5(3000);
			/* retry will check if exiting */
			return false;
		}
	} else if (server->large_buf) {
		/* we are reusing a dirty large buf, clear its start */
		FUNC4(server->bigbuf, 0, FUNC3());
	}

	if (!server->smallbuf) {
		server->smallbuf = (char *)FUNC2();
		if (!server->smallbuf) {
			FUNC0(1, "No memory for SMB response");
			FUNC5(1000);
			/* retry will check if exiting */
			return false;
		}
		/* beginning of smb buffer is cleared in our buf_get */
	} else {
		/* if existing small buf clear beginning */
		FUNC4(server->smallbuf, 0, FUNC3());
	}

	return true;
}