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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct connection {int /*<<< orphan*/  sock; } ;
struct TYPE_2__ {int /*<<< orphan*/  ci_tcp_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_SOCKOPT_BINDX_ADD ; 
 int /*<<< orphan*/  SOL_SCTP ; 
 TYPE_1__ dlm_config ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct connection *sctp_con,
			      struct sockaddr_storage *addr,
			      int addr_len, int num)
{
	int result = 0;

	if (num == 1)
		result = FUNC0(sctp_con->sock,
				     (struct sockaddr *) addr,
				     addr_len);
	else
		result = FUNC1(sctp_con->sock, SOL_SCTP,
					   SCTP_SOCKOPT_BINDX_ADD,
					   (char *)addr, addr_len);

	if (result < 0)
		FUNC2("Can't bind to port %d addr number %d",
			  dlm_config.ci_tcp_port, num);

	return result;
}