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
struct sock {int /*<<< orphan*/  sk_socket; } ;
struct smb_sb_info {void (* data_ready ) (struct sock*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,int) ; 
 struct smb_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(struct sock *sk, int len)
{
	struct smb_sb_info *server = FUNC1(sk->sk_socket);
	void (*data_ready)(struct sock *, int) = server->data_ready;

	data_ready(sk, len);
	FUNC0("(%p, %d)\n", sk, len);
	FUNC2();
}