#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct request_sock {TYPE_1__* rsk_ops; } ;
struct netlbl_lsm_secattr {int /*<<< orphan*/  domain; } ;
struct TYPE_5__ {struct cipso_v4_doi* cipsov4; } ;
struct netlbl_domaddr4_map {TYPE_2__ type_def; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {struct cipso_v4_doi* cipsov4; } ;
struct netlbl_dom_map {TYPE_3__ type_def; int /*<<< orphan*/  type; } ;
struct inet_request_sock {int /*<<< orphan*/  rmt_addr; } ;
struct cipso_v4_doi {int dummy; } ;
struct TYPE_4__ {int family; } ;

/* Variables and functions */
#define  AF_INET 131 
#define  AF_INET6 130 
 int ENOENT ; 
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  NETLBL_NLTYPE_ADDRSELECT ; 
#define  NETLBL_NLTYPE_CIPSOV4 129 
#define  NETLBL_NLTYPE_UNLABELED 128 
 int /*<<< orphan*/  FUNC0 (struct request_sock*) ; 
 int FUNC1 (struct request_sock*,struct cipso_v4_doi*,struct netlbl_lsm_secattr const*) ; 
 struct inet_request_sock* FUNC2 (struct request_sock*) ; 
 struct netlbl_dom_map* FUNC3 (int /*<<< orphan*/ ) ; 
 struct netlbl_domaddr4_map* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(struct request_sock *req,
		       const struct netlbl_lsm_secattr *secattr)
{
	int ret_val;
	struct netlbl_dom_map *dom_entry;
	struct netlbl_domaddr4_map *af4_entry;
	u32 proto_type;
	struct cipso_v4_doi *proto_cv4;

	FUNC5();
	dom_entry = FUNC3(secattr->domain);
	if (dom_entry == NULL) {
		ret_val = -ENOENT;
		goto req_setattr_return;
	}
	switch (req->rsk_ops->family) {
	case AF_INET:
		if (dom_entry->type == NETLBL_NLTYPE_ADDRSELECT) {
			struct inet_request_sock *req_inet = FUNC2(req);
			af4_entry = FUNC4(secattr->domain,
							    req_inet->rmt_addr);
			if (af4_entry == NULL) {
				ret_val = -ENOENT;
				goto req_setattr_return;
			}
			proto_type = af4_entry->type;
			proto_cv4 = af4_entry->type_def.cipsov4;
		} else {
			proto_type = dom_entry->type;
			proto_cv4 = dom_entry->type_def.cipsov4;
		}
		switch (proto_type) {
		case NETLBL_NLTYPE_CIPSOV4:
			ret_val = FUNC1(req, proto_cv4, secattr);
			break;
		case NETLBL_NLTYPE_UNLABELED:
			/* just delete the protocols we support for right now
			 * but we could remove other protocols if needed */
			FUNC0(req);
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

req_setattr_return:
	FUNC6();
	return ret_val;
}