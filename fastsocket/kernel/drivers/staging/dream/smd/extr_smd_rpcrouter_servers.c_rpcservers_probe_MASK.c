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
struct task_struct {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct task_struct*) ; 
 struct task_struct* endpoint ; 
 struct task_struct* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct task_struct* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int rpc_servers_active ; 
 int /*<<< orphan*/  rpc_servers_thread ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct task_struct *server_thread;

	endpoint = FUNC3();
	if (FUNC0(endpoint))
		return FUNC1(endpoint);

	/* we're online -- register any servers installed beforehand */
	rpc_servers_active = 1;
	FUNC4();

	/* start the kernel thread */
	server_thread = FUNC2(rpc_servers_thread, NULL, "krpcserversd");
	if (FUNC0(server_thread))
		return FUNC1(server_thread);

	return 0;
}