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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct netlbl_lsm_secattr {scalar_t__ flags; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ NETLBL_SECATTR_NONE ; 
 int /*<<< orphan*/  SECSID_NULL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct netlbl_lsm_secattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct netlbl_lsm_secattr*) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,struct netlbl_lsm_secattr*) ; 
 int FUNC4 (struct sk_buff*,struct netlbl_lsm_secattr*,int /*<<< orphan*/ *) ; 

int FUNC5(struct sk_buff *skb,
				 u16 family,
				 u32 *type,
				 u32 *sid)
{
	int rc;
	struct netlbl_lsm_secattr secattr;

	if (!FUNC0()) {
		*sid = SECSID_NULL;
		return 0;
	}

	FUNC2(&secattr);
	rc = FUNC3(skb, family, &secattr);
	if (rc == 0 && secattr.flags != NETLBL_SECATTR_NONE)
		rc = FUNC4(skb, &secattr, sid);
	else
		*sid = SECSID_NULL;
	*type = secattr.type;
	FUNC1(&secattr);

	return rc;
}