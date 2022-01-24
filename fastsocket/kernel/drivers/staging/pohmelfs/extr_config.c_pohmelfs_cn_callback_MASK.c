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
struct netlink_skb_parms {int /*<<< orphan*/  eff_cap; } ;
struct cn_msg {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int ENOSYS ; 
#define  POHMELFS_FLAGS_ADD 134 
#define  POHMELFS_FLAGS_CRYPTO 133 
#define  POHMELFS_FLAGS_DEL 132 
#define  POHMELFS_FLAGS_DUMP 131 
#define  POHMELFS_FLAGS_FLUSH 130 
#define  POHMELFS_FLAGS_MODIFY 129 
#define  POHMELFS_FLAGS_SHOW 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cn_msg*) ; 
 int FUNC2 (struct cn_msg*,int) ; 
 int FUNC3 (struct cn_msg*) ; 
 int FUNC4 (struct cn_msg*) ; 
 int FUNC5 (struct cn_msg*) ; 

__attribute__((used)) static void FUNC6(struct cn_msg *msg, struct netlink_skb_parms *nsp)
{
	int err;

	if (!FUNC0(nsp->eff_cap, CAP_SYS_ADMIN))
		return;

	switch (msg->flags) {
		case POHMELFS_FLAGS_ADD:
		case POHMELFS_FLAGS_DEL:
		case POHMELFS_FLAGS_MODIFY:
			err = FUNC2(msg, msg->flags);
			break;
		case POHMELFS_FLAGS_FLUSH:
			err = FUNC5(msg);
			break;
		case POHMELFS_FLAGS_SHOW:
			err = FUNC3(msg);
			break;
		case POHMELFS_FLAGS_DUMP:
			err = FUNC4(msg);
			break;
		case POHMELFS_FLAGS_CRYPTO:
			err = FUNC1(msg);
			break;
		default:
			err = -ENOSYS;
			break;
	}
}