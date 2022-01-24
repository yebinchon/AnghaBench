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
struct sock {int dummy; } ;
struct netlbl_lsm_secattr {int dummy; } ;
struct iphdr {int dummy; } ;
struct ip_options {int optlen; int cipso; int /*<<< orphan*/  __data; } ;
struct inet_sock {int /*<<< orphan*/  opt; scalar_t__ is_icsk; } ;
struct inet_connection_sock {int icsk_ext_hdr_len; int /*<<< orphan*/  icsk_pmtu_cookie; int /*<<< orphan*/  (* icsk_sync_mss ) (struct sock*,int /*<<< orphan*/ ) ;} ;
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
 struct inet_connection_sock* FUNC3 (struct sock*) ; 
 struct inet_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (struct ip_options*) ; 
 unsigned char* FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct ip_options* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  opt_kfree_rcu ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct ip_options*) ; 
 struct ip_options* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ ) ; 

int FUNC13(struct sock *sk,
			  const struct cipso_v4_doi *doi_def,
			  const struct netlbl_lsm_secattr *secattr)
{
	int ret_val = -EPERM;
	unsigned char *buf = NULL;
	u32 buf_len;
	u32 opt_len;
	struct ip_options *old, *opt = NULL;
	struct inet_sock *sk_inet;
	struct inet_connection_sock *sk_conn;

	/* In the case of sock_create_lite(), the sock->sk field is not
	 * defined yet but it is not a problem as the only users of these
	 * "lite" PF_INET sockets are functions which do an accept() call
	 * afterwards so we will label the socket as part of the accept(). */
	if (sk == NULL)
		return 0;

	/* We allocate the maximum CIPSO option size here so we are probably
	 * being a little wasteful, but it makes our life _much_ easier later
	 * on and after all we are only talking about 40 bytes. */
	buf_len = CIPSO_V4_OPT_LEN_MAX;
	buf = FUNC7(buf_len, GFP_ATOMIC);
	if (buf == NULL) {
		ret_val = -ENOMEM;
		goto socket_setattr_failure;
	}

	ret_val = FUNC1(buf, buf_len, doi_def, secattr);
	if (ret_val < 0)
		goto socket_setattr_failure;
	buf_len = ret_val;

	/* We can't use ip_options_get() directly because it makes a call to
	 * ip_options_get_alloc() which allocates memory with GFP_KERNEL and
	 * we won't always have CAP_NET_RAW even though we _always_ want to
	 * set the IPOPT_CIPSO option. */
	opt_len = (buf_len + 3) & ~3;
	opt = FUNC8(opt_len, GFP_ATOMIC);
	if (opt == NULL) {
		ret_val = -ENOMEM;
		goto socket_setattr_failure;
	}
	FUNC9(opt->__data, buf, buf_len);
	opt->optlen = opt_len;
	opt->cipso = sizeof(struct iphdr);
	FUNC5(buf);
	buf = NULL;

	sk_inet = FUNC4(sk);
	old = FUNC11(sk_inet->opt);
	if (sk_inet->is_icsk) {
		sk_conn = FUNC3(sk);
		if (old)
			sk_conn->icsk_ext_hdr_len -= old->optlen;
		sk_conn->icsk_ext_hdr_len += opt->optlen;
		sk_conn->icsk_sync_mss(sk, sk_conn->icsk_pmtu_cookie);
	}
	FUNC10(sk_inet->opt, opt);
	if (old)
		FUNC0(&FUNC2(old)->rcu, opt_kfree_rcu);

	return 0;

socket_setattr_failure:
	FUNC5(buf);
	FUNC6(opt);
	return ret_val;
}