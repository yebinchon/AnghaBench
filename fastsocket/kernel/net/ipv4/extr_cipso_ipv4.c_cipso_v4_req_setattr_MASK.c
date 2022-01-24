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
typedef  int u32 ;
struct request_sock {int dummy; } ;
struct netlbl_lsm_secattr {int dummy; } ;
struct iphdr {int dummy; } ;
struct ip_options {int optlen; int cipso; int /*<<< orphan*/  __data; } ;
struct inet_request_sock {int /*<<< orphan*/  opt; } ;
struct cipso_v4_doi {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rcu; } ;

/* Variables and functions */
 int CIPSO_V4_OPT_LEN_MAX ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned char*,int,struct cipso_v4_doi const*,struct netlbl_lsm_secattr const*) ; 
 TYPE_1__* FUNC2 (struct ip_options*) ; 
 struct inet_request_sock* FUNC3 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ip_options*) ; 
 unsigned char* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct ip_options* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  opt_kfree_rcu ; 
 struct ip_options* FUNC9 (int /*<<< orphan*/ *,struct ip_options*) ; 

int FUNC10(struct request_sock *req,
			 const struct cipso_v4_doi *doi_def,
			 const struct netlbl_lsm_secattr *secattr)
{
	int ret_val = -EPERM;
	unsigned char *buf = NULL;
	u32 buf_len;
	u32 opt_len;
	struct ip_options *opt = NULL;
	struct inet_request_sock *req_inet;

	/* We allocate the maximum CIPSO option size here so we are probably
	 * being a little wasteful, but it makes our life _much_ easier later
	 * on and after all we are only talking about 40 bytes. */
	buf_len = CIPSO_V4_OPT_LEN_MAX;
	buf = FUNC6(buf_len, GFP_ATOMIC);
	if (buf == NULL) {
		ret_val = -ENOMEM;
		goto req_setattr_failure;
	}

	ret_val = FUNC1(buf, buf_len, doi_def, secattr);
	if (ret_val < 0)
		goto req_setattr_failure;
	buf_len = ret_val;

	/* We can't use ip_options_get() directly because it makes a call to
	 * ip_options_get_alloc() which allocates memory with GFP_KERNEL and
	 * we won't always have CAP_NET_RAW even though we _always_ want to
	 * set the IPOPT_CIPSO option. */
	opt_len = (buf_len + 3) & ~3;
	opt = FUNC7(opt_len, GFP_ATOMIC);
	if (opt == NULL) {
		ret_val = -ENOMEM;
		goto req_setattr_failure;
	}
	FUNC8(opt->__data, buf, buf_len);
	opt->optlen = opt_len;
	opt->cipso = sizeof(struct iphdr);
	FUNC4(buf);
	buf = NULL;

	req_inet = FUNC3(req);
	opt = FUNC9(&req_inet->opt, opt);
	if (opt)
		FUNC0(&FUNC2(opt)->rcu, opt_kfree_rcu);

	return 0;

req_setattr_failure:
	FUNC4(buf);
	FUNC5(opt);
	return ret_val;
}