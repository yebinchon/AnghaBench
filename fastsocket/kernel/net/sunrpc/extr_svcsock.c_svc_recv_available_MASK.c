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
struct svc_sock {struct socket* sk_sock; } ;
struct socket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIOCINQ ; 
 int FUNC0 (struct socket*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC1(struct svc_sock *svsk)
{
	struct socket	*sock = svsk->sk_sock;
	int		avail, err;

	err = FUNC0(sock, TIOCINQ, (unsigned long) &avail);

	return (err >= 0)? avail : err;
}