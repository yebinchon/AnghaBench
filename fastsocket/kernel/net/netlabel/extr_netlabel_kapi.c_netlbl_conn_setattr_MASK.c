#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct sock {int dummy; } ;
struct netlbl_lsm_secattr {int /*<<< orphan*/  domain; } ;
struct TYPE_3__ {int /*<<< orphan*/  cipsov4; } ;
struct netlbl_domaddr4_map {TYPE_1__ type_def; int /*<<< orphan*/  type; } ;

/* Variables and functions */
#define  AF_INET 131 
#define  AF_INET6 130 
 int ENOENT ; 
 int EPROTONOSUPPORT ; 
#define  NETLBL_NLTYPE_CIPSOV4 129 
#define  NETLBL_NLTYPE_UNLABELED 128 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int FUNC1 (struct sock*,int /*<<< orphan*/ ,struct netlbl_lsm_secattr const*) ; 
 struct netlbl_domaddr4_map* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(struct sock *sk,
			struct sockaddr *addr,
			const struct netlbl_lsm_secattr *secattr)
{
	int ret_val;
	struct sockaddr_in *addr4;
	struct netlbl_domaddr4_map *af4_entry;

	FUNC3();
	switch (addr->sa_family) {
	case AF_INET:
		addr4 = (struct sockaddr_in *)addr;
		af4_entry = FUNC2(secattr->domain,
						       addr4->sin_addr.s_addr);
		if (af4_entry == NULL) {
			ret_val = -ENOENT;
			goto conn_setattr_return;
		}
		switch (af4_entry->type) {
		case NETLBL_NLTYPE_CIPSOV4:
			ret_val = FUNC1(sk,
						   af4_entry->type_def.cipsov4,
						   secattr);
			break;
		case NETLBL_NLTYPE_UNLABELED:
			/* just delete the protocols we support for right now
			 * but we could remove other protocols if needed */
			FUNC0(sk);
			ret_val = 0;
			break;
		default:
			ret_val = -ENOENT;
		}
		break;
#if defined(CONFIG_IPV6) || defined(CONFIG_IPV6_MODULE)
	case AF_INET6:
		/* since we don't support any IPv6 labeling protocols right
		 * now we can optimize everything away until we do */
		ret_val = 0;
		break;
#endif /* IPv6 */
	default:
		ret_val = -EPROTONOSUPPORT;
	}

conn_setattr_return:
	FUNC4();
	return ret_val;
}