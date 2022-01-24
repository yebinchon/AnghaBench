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
struct sock {struct ncp_server* sk_user_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  tq; } ;
struct ncp_server {TYPE_1__ rcv; int /*<<< orphan*/  (* error_report ) (struct sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 

void FUNC2(struct sock *sk)
{
	struct ncp_server *server = sk->sk_user_data;
	
	server->error_report(sk);
	FUNC0(&server->rcv.tq);
}