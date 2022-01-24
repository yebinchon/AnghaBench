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
struct sock {int /*<<< orphan*/  sk_write_space; int /*<<< orphan*/  sk_data_ready; int /*<<< orphan*/  sk_error_report; } ;
struct ncp_server {int /*<<< orphan*/  timeout_tm; int /*<<< orphan*/  write_space; int /*<<< orphan*/  data_ready; int /*<<< orphan*/  error_report; TYPE_1__* ncp_sock; } ;
struct TYPE_2__ {struct sock* sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct ncp_server *server) {
	struct sock* sk = server->ncp_sock->sk;
		
	sk->sk_error_report = server->error_report;
	sk->sk_data_ready   = server->data_ready;
	sk->sk_write_space  = server->write_space;
	FUNC0(&server->timeout_tm);
	FUNC1();
}