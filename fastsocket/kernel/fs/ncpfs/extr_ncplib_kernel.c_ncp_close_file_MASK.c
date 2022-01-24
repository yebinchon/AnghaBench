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
struct ncp_server {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ncp_server*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ncp_server*) ; 
 int FUNC3 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ncp_server*) ; 

int
FUNC5(struct ncp_server *server, const char *file_id)
{
	int result;

	FUNC2(server);
	FUNC0(server, 0);
	FUNC1(server, file_id, 6);

	result = FUNC3(server, 66);
	FUNC4(server);
	return result;
}