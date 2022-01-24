#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint16_t ;
struct xfrm_user_sec_ctx {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  state; int /*<<< orphan*/  seq; } ;
struct TYPE_20__ {scalar_t__ aalgo; scalar_t__ calgo; scalar_t__ ealgo; int mode; void* family; int /*<<< orphan*/  reqid; int /*<<< orphan*/  saddr; int /*<<< orphan*/  flags; int /*<<< orphan*/  replay_window; } ;
struct TYPE_19__ {void* family; int /*<<< orphan*/  prefixlen_s; int /*<<< orphan*/  saddr; } ;
struct TYPE_18__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  spi; scalar_t__ proto; } ;
struct TYPE_12__ {int /*<<< orphan*/  soft_use_expires_seconds; int /*<<< orphan*/  soft_add_expires_seconds; void* soft_byte_limit; void* soft_packet_limit; int /*<<< orphan*/  hard_use_expires_seconds; int /*<<< orphan*/  hard_add_expires_seconds; void* hard_byte_limit; void* hard_packet_limit; } ;
struct xfrm_state {TYPE_10__ km; struct xfrm_encap_tmpl* encap; TYPE_9__ props; TYPE_8__ sel; TYPE_7__ id; TYPE_6__* ealg; TYPE_5__* calg; TYPE_2__* aalg; TYPE_1__ lft; } ;
struct xfrm_encap_tmpl {int /*<<< orphan*/  encap_oa; int /*<<< orphan*/  encap_dport; int /*<<< orphan*/  encap_sport; int /*<<< orphan*/  encap_type; } ;
struct TYPE_14__ {int /*<<< orphan*/  icv_truncbits; } ;
struct TYPE_15__ {TYPE_3__ auth; } ;
struct xfrm_algo_desc {int /*<<< orphan*/  name; TYPE_4__ uinfo; } ;
struct sadb_x_sec_ctx {int dummy; } ;
struct sadb_x_sa2 {int /*<<< orphan*/  sadb_x_sa2_reqid; int /*<<< orphan*/  sadb_x_sa2_mode; } ;
struct sadb_x_nat_t_type {int /*<<< orphan*/  sadb_x_nat_t_type_type; } ;
struct sadb_x_nat_t_port {int /*<<< orphan*/  sadb_x_nat_t_port_port; } ;
struct sadb_sa {scalar_t__ sadb_sa_auth; scalar_t__ sadb_sa_encrypt; int sadb_sa_flags; int /*<<< orphan*/  sadb_sa_replay; int /*<<< orphan*/  sadb_sa_spi; } ;
struct sadb_msg {scalar_t__ sadb_msg_satype; int /*<<< orphan*/  sadb_msg_seq; } ;
struct sadb_lifetime {int /*<<< orphan*/  sadb_lifetime_usetime; int /*<<< orphan*/  sadb_lifetime_addtime; int /*<<< orphan*/  sadb_lifetime_bytes; int /*<<< orphan*/  sadb_lifetime_allocations; } ;
struct sadb_key {int sadb_key_bits; int sadb_key_len; } ;
struct sadb_address {int /*<<< orphan*/  sadb_address_prefixlen; } ;
struct net {int dummy; } ;
struct TYPE_17__ {int alg_key_len; int /*<<< orphan*/  alg_key; int /*<<< orphan*/  alg_name; } ;
struct TYPE_16__ {int /*<<< orphan*/  alg_name; } ;
struct TYPE_13__ {int alg_key_len; int /*<<< orphan*/  alg_trunc_len; int /*<<< orphan*/  alg_key; int /*<<< orphan*/  alg_name; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOSYS ; 
 struct xfrm_state* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ SADB_AALG_MAX ; 
 scalar_t__ SADB_EALG_MAX ; 
 scalar_t__ SADB_EALG_NULL ; 
 int SADB_EXT_ADDRESS_DST ; 
 int SADB_EXT_ADDRESS_PROXY ; 
 int SADB_EXT_ADDRESS_SRC ; 
 int SADB_EXT_KEY_AUTH ; 
 int SADB_EXT_KEY_ENCRYPT ; 
 int SADB_EXT_LIFETIME_HARD ; 
 int SADB_EXT_LIFETIME_SOFT ; 
 int SADB_EXT_SA ; 
 int SADB_SAFLAGS_DECAP_DSCP ; 
 int SADB_SAFLAGS_NOECN ; 
 int SADB_SAFLAGS_NOPMTUDISC ; 
 scalar_t__ SADB_SATYPE_AH ; 
 scalar_t__ SADB_SATYPE_ESP ; 
 scalar_t__ SADB_X_AALG_NULL ; 
 scalar_t__ SADB_X_CALG_MAX ; 
 int SADB_X_EXT_NAT_T_DPORT ; 
 int SADB_X_EXT_NAT_T_SPORT ; 
 int SADB_X_EXT_NAT_T_TYPE ; 
 int SADB_X_EXT_SA2 ; 
 int SADB_X_EXT_SEC_CTX ; 
 scalar_t__ SADB_X_SATYPE_IPCOMP ; 
 int /*<<< orphan*/  XFRM_STATE_DEAD ; 
 int /*<<< orphan*/  XFRM_STATE_DECAP_DSCP ; 
 int /*<<< orphan*/  XFRM_STATE_NOECN ; 
 int /*<<< orphan*/  XFRM_STATE_NOPMTUDISC ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfrm_user_sec_ctx*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sadb_key*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct xfrm_user_sec_ctx* FUNC7 (struct sadb_x_sec_ctx*) ; 
 void* FUNC8 (struct sadb_address*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (void*,void*) ; 
 int FUNC11 (struct xfrm_state*,struct xfrm_user_sec_ctx*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xfrm_algo_desc* FUNC13 (scalar_t__) ; 
 struct xfrm_algo_desc* FUNC14 (scalar_t__) ; 
 struct xfrm_algo_desc* FUNC15 (scalar_t__) ; 
 int FUNC16 (struct xfrm_state*) ; 
 struct xfrm_state* FUNC17 (struct net*) ; 
 int /*<<< orphan*/  FUNC18 (struct xfrm_state*) ; 

__attribute__((used)) static struct xfrm_state * FUNC19(struct net *net,
						struct sadb_msg *hdr,
						void **ext_hdrs)
{
	struct xfrm_state *x;
	struct sadb_lifetime *lifetime;
	struct sadb_sa *sa;
	struct sadb_key *key;
	struct sadb_x_sec_ctx *sec_ctx;
	uint16_t proto;
	int err;


	sa = (struct sadb_sa *) ext_hdrs[SADB_EXT_SA-1];
	if (!sa ||
	    !FUNC10(ext_hdrs[SADB_EXT_ADDRESS_SRC-1],
				     ext_hdrs[SADB_EXT_ADDRESS_DST-1]))
		return FUNC0(-EINVAL);
	if (hdr->sadb_msg_satype == SADB_SATYPE_ESP &&
	    !ext_hdrs[SADB_EXT_KEY_ENCRYPT-1])
		return FUNC0(-EINVAL);
	if (hdr->sadb_msg_satype == SADB_SATYPE_AH &&
	    !ext_hdrs[SADB_EXT_KEY_AUTH-1])
		return FUNC0(-EINVAL);
	if (!!ext_hdrs[SADB_EXT_LIFETIME_HARD-1] !=
	    !!ext_hdrs[SADB_EXT_LIFETIME_SOFT-1])
		return FUNC0(-EINVAL);

	proto = FUNC9(hdr->sadb_msg_satype);
	if (proto == 0)
		return FUNC0(-EINVAL);

	/* default error is no buffer space */
	err = -ENOBUFS;

	/* RFC2367:

   Only SADB_SASTATE_MATURE SAs may be submitted in an SADB_ADD message.
   SADB_SASTATE_LARVAL SAs are created by SADB_GETSPI and it is not
   sensible to add a new SA in the DYING or SADB_SASTATE_DEAD state.
   Therefore, the sadb_sa_state field of all submitted SAs MUST be
   SADB_SASTATE_MATURE and the kernel MUST return an error if this is
   not true.

	   However, KAME setkey always uses SADB_SASTATE_LARVAL.
	   Hence, we have to _ignore_ sadb_sa_state, which is also reasonable.
	 */
	if (sa->sadb_sa_auth > SADB_AALG_MAX ||
	    (hdr->sadb_msg_satype == SADB_X_SATYPE_IPCOMP &&
	     sa->sadb_sa_encrypt > SADB_X_CALG_MAX) ||
	    sa->sadb_sa_encrypt > SADB_EALG_MAX)
		return FUNC0(-EINVAL);
	key = (struct sadb_key*) ext_hdrs[SADB_EXT_KEY_AUTH-1];
	if (key != NULL &&
	    sa->sadb_sa_auth != SADB_X_AALG_NULL &&
	    ((key->sadb_key_bits+7) / 8 == 0 ||
	     (key->sadb_key_bits+7) / 8 > key->sadb_key_len * sizeof(uint64_t)))
		return FUNC0(-EINVAL);
	key = ext_hdrs[SADB_EXT_KEY_ENCRYPT-1];
	if (key != NULL &&
	    sa->sadb_sa_encrypt != SADB_EALG_NULL &&
	    ((key->sadb_key_bits+7) / 8 == 0 ||
	     (key->sadb_key_bits+7) / 8 > key->sadb_key_len * sizeof(uint64_t)))
		return FUNC0(-EINVAL);

	x = FUNC17(net);
	if (x == NULL)
		return FUNC0(-ENOBUFS);

	x->id.proto = proto;
	x->id.spi = sa->sadb_sa_spi;
	x->props.replay_window = sa->sadb_sa_replay;
	if (sa->sadb_sa_flags & SADB_SAFLAGS_NOECN)
		x->props.flags |= XFRM_STATE_NOECN;
	if (sa->sadb_sa_flags & SADB_SAFLAGS_DECAP_DSCP)
		x->props.flags |= XFRM_STATE_DECAP_DSCP;
	if (sa->sadb_sa_flags & SADB_SAFLAGS_NOPMTUDISC)
		x->props.flags |= XFRM_STATE_NOPMTUDISC;

	lifetime = (struct sadb_lifetime*) ext_hdrs[SADB_EXT_LIFETIME_HARD-1];
	if (lifetime != NULL) {
		x->lft.hard_packet_limit = FUNC1(lifetime->sadb_lifetime_allocations);
		x->lft.hard_byte_limit = FUNC1(lifetime->sadb_lifetime_bytes);
		x->lft.hard_add_expires_seconds = lifetime->sadb_lifetime_addtime;
		x->lft.hard_use_expires_seconds = lifetime->sadb_lifetime_usetime;
	}
	lifetime = (struct sadb_lifetime*) ext_hdrs[SADB_EXT_LIFETIME_SOFT-1];
	if (lifetime != NULL) {
		x->lft.soft_packet_limit = FUNC1(lifetime->sadb_lifetime_allocations);
		x->lft.soft_byte_limit = FUNC1(lifetime->sadb_lifetime_bytes);
		x->lft.soft_add_expires_seconds = lifetime->sadb_lifetime_addtime;
		x->lft.soft_use_expires_seconds = lifetime->sadb_lifetime_usetime;
	}

	sec_ctx = (struct sadb_x_sec_ctx *) ext_hdrs[SADB_X_EXT_SEC_CTX-1];
	if (sec_ctx != NULL) {
		struct xfrm_user_sec_ctx *uctx = FUNC7(sec_ctx);

		if (!uctx)
			goto out;

		err = FUNC11(x, uctx);
		FUNC2(uctx);

		if (err)
			goto out;
	}

	key = (struct sadb_key*) ext_hdrs[SADB_EXT_KEY_AUTH-1];
	if (sa->sadb_sa_auth) {
		int keysize = 0;
		struct xfrm_algo_desc *a = FUNC13(sa->sadb_sa_auth);
		if (!a) {
			err = -ENOSYS;
			goto out;
		}
		if (key)
			keysize = (key->sadb_key_bits + 7) / 8;
		x->aalg = FUNC3(sizeof(*x->aalg) + keysize, GFP_KERNEL);
		if (!x->aalg)
			goto out;
		FUNC12(x->aalg->alg_name, a->name);
		x->aalg->alg_key_len = 0;
		if (key) {
			x->aalg->alg_key_len = key->sadb_key_bits;
			FUNC4(x->aalg->alg_key, key+1, keysize);
		}
		x->aalg->alg_trunc_len = a->uinfo.auth.icv_truncbits;
		x->props.aalgo = sa->sadb_sa_auth;
		/* x->algo.flags = sa->sadb_sa_flags; */
	}
	if (sa->sadb_sa_encrypt) {
		if (hdr->sadb_msg_satype == SADB_X_SATYPE_IPCOMP) {
			struct xfrm_algo_desc *a = FUNC14(sa->sadb_sa_encrypt);
			if (!a) {
				err = -ENOSYS;
				goto out;
			}
			x->calg = FUNC3(sizeof(*x->calg), GFP_KERNEL);
			if (!x->calg)
				goto out;
			FUNC12(x->calg->alg_name, a->name);
			x->props.calgo = sa->sadb_sa_encrypt;
		} else {
			int keysize = 0;
			struct xfrm_algo_desc *a = FUNC15(sa->sadb_sa_encrypt);
			if (!a) {
				err = -ENOSYS;
				goto out;
			}
			key = (struct sadb_key*) ext_hdrs[SADB_EXT_KEY_ENCRYPT-1];
			if (key)
				keysize = (key->sadb_key_bits + 7) / 8;
			x->ealg = FUNC3(sizeof(*x->ealg) + keysize, GFP_KERNEL);
			if (!x->ealg)
				goto out;
			FUNC12(x->ealg->alg_name, a->name);
			x->ealg->alg_key_len = 0;
			if (key) {
				x->ealg->alg_key_len = key->sadb_key_bits;
				FUNC4(x->ealg->alg_key, key+1, keysize);
			}
			x->props.ealgo = sa->sadb_sa_encrypt;
		}
	}
	/* x->algo.flags = sa->sadb_sa_flags; */

	x->props.family = FUNC8((struct sadb_address *) ext_hdrs[SADB_EXT_ADDRESS_SRC-1],
						    &x->props.saddr);
	if (!x->props.family) {
		err = -EAFNOSUPPORT;
		goto out;
	}
	FUNC8((struct sadb_address *) ext_hdrs[SADB_EXT_ADDRESS_DST-1],
				  &x->id.daddr);

	if (ext_hdrs[SADB_X_EXT_SA2-1]) {
		struct sadb_x_sa2 *sa2 = (void*)ext_hdrs[SADB_X_EXT_SA2-1];
		int mode = FUNC6(sa2->sadb_x_sa2_mode);
		if (mode < 0) {
			err = -EINVAL;
			goto out;
		}
		x->props.mode = mode;
		x->props.reqid = sa2->sadb_x_sa2_reqid;
	}

	if (ext_hdrs[SADB_EXT_ADDRESS_PROXY-1]) {
		struct sadb_address *addr = ext_hdrs[SADB_EXT_ADDRESS_PROXY-1];

		/* Nobody uses this, but we try. */
		x->sel.family = FUNC8(addr, &x->sel.saddr);
		x->sel.prefixlen_s = addr->sadb_address_prefixlen;
	}

	if (!x->sel.family)
		x->sel.family = x->props.family;

	if (ext_hdrs[SADB_X_EXT_NAT_T_TYPE-1]) {
		struct sadb_x_nat_t_type* n_type;
		struct xfrm_encap_tmpl *natt;

		x->encap = FUNC3(sizeof(*x->encap), GFP_KERNEL);
		if (!x->encap)
			goto out;

		natt = x->encap;
		n_type = ext_hdrs[SADB_X_EXT_NAT_T_TYPE-1];
		natt->encap_type = n_type->sadb_x_nat_t_type_type;

		if (ext_hdrs[SADB_X_EXT_NAT_T_SPORT-1]) {
			struct sadb_x_nat_t_port* n_port =
				ext_hdrs[SADB_X_EXT_NAT_T_SPORT-1];
			natt->encap_sport = n_port->sadb_x_nat_t_port_port;
		}
		if (ext_hdrs[SADB_X_EXT_NAT_T_DPORT-1]) {
			struct sadb_x_nat_t_port* n_port =
				ext_hdrs[SADB_X_EXT_NAT_T_DPORT-1];
			natt->encap_dport = n_port->sadb_x_nat_t_port_port;
		}
		FUNC5(&natt->encap_oa, 0, sizeof(natt->encap_oa));
	}

	err = FUNC16(x);
	if (err)
		goto out;

	x->km.seq = hdr->sadb_msg_seq;
	return x;

out:
	x->km.state = XFRM_STATE_DEAD;
	FUNC18(x);
	return FUNC0(err);
}