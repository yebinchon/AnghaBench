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
struct socket {TYPE_1__* ops; } ;
struct smb_sb_info {int dummy; } ;
typedef  int /*<<< orphan*/  mm_segment_t ;
struct TYPE_2__ {int (* ioctl ) (struct socket*,int /*<<< orphan*/ ,unsigned long) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCINQ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct socket* FUNC2 (struct smb_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct socket*,int /*<<< orphan*/ ,unsigned long) ; 

int
FUNC5(struct smb_sb_info *server)
{
	mm_segment_t oldfs;
	int avail, err;
	struct socket *sock = FUNC2(server);

	oldfs = FUNC1();
	FUNC3(FUNC0());
	err = sock->ops->ioctl(sock, SIOCINQ, (unsigned long) &avail);
	FUNC3(oldfs);
	return (err >= 0) ? avail : err;
}