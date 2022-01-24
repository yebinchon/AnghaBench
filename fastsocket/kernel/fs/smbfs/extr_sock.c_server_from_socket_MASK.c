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
struct socket {TYPE_1__* sk; } ;
struct smb_sb_info {int dummy; } ;
struct TYPE_2__ {struct smb_sb_info* sk_user_data; } ;

/* Variables and functions */

__attribute__((used)) static struct smb_sb_info *
FUNC0(struct socket *socket)
{
	return socket->sk->sk_user_data;
}