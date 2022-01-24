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
struct task_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/ * response; } ;
struct TCP_Server_Info {scalar_t__ srv_count; int /*<<< orphan*/  tsk; TYPE_1__ session_key; int /*<<< orphan*/  tcpStatus; int /*<<< orphan*/  echo; int /*<<< orphan*/  tcp_ses_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  CifsExiting ; 
 int /*<<< orphan*/  GlobalMid_Lock ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC2 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  cifs_tcp_ses_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct task_struct* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct TCP_Server_Info *server)
{
	struct task_struct *task;

	FUNC6(&cifs_tcp_ses_lock);
	if (--server->srv_count > 0) {
		FUNC7(&cifs_tcp_ses_lock);
		return;
	}

	FUNC5(&server->tcp_ses_list);
	FUNC7(&cifs_tcp_ses_lock);

	FUNC0(&server->echo);

	FUNC6(&GlobalMid_Lock);
	server->tcpStatus = CifsExiting;
	FUNC7(&GlobalMid_Lock);

	FUNC1(server);
	FUNC2(server);

	FUNC4(server->session_key.response);
	server->session_key.response = NULL;
	server->session_key.len = 0;

	task = FUNC8(&server->tsk, NULL);
	if (task)
		FUNC3(SIGKILL, task);
}