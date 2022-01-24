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
struct sk_buff {int dummy; } ;
struct netlbl_lsm_secattr {int flags; } ;

/* Variables and functions */
 int NETLBL_SECATTR_CACHE ; 
 int NETLBL_SECATTR_CACHEABLE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct netlbl_lsm_secattr*) ; 
 int FUNC1 (struct netlbl_lsm_secattr*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb,
					   struct netlbl_lsm_secattr *secattr,
					   u32 *sid)
{
	int rc;

	rc = FUNC1(secattr, sid);
	if (rc == 0 &&
	    (secattr->flags & NETLBL_SECATTR_CACHEABLE) &&
	    (secattr->flags & NETLBL_SECATTR_CACHE))
		FUNC0(skb, secattr);

	return rc;
}