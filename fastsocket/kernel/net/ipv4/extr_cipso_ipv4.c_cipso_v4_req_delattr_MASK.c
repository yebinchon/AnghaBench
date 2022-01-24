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
struct request_sock {int dummy; } ;
struct ip_options {scalar_t__ cipso; } ;
struct inet_request_sock {struct ip_options* opt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_options**) ; 
 struct inet_request_sock* FUNC1 (struct request_sock*) ; 

void FUNC2(struct request_sock *req)
{
	struct ip_options *opt;
	struct inet_request_sock *req_inet;

	req_inet = FUNC1(req);
	opt = req_inet->opt;
	if (opt == NULL || opt->cipso == 0)
		return;

	FUNC0(&req_inet->opt);
}