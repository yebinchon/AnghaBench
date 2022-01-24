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
typedef  union nf_inet_addr {int dummy; } nf_inet_addr ;
struct TYPE_4__ {int type; int protocol; int /*<<< orphan*/  fwmark; int /*<<< orphan*/  timeout; int /*<<< orphan*/  dport; int /*<<< orphan*/  daddr; } ;
struct TYPE_3__ {int protocol; int /*<<< orphan*/  fwmark; int /*<<< orphan*/  timeout; int /*<<< orphan*/  dport; int /*<<< orphan*/  daddr; int /*<<< orphan*/  state; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
union ip_vs_sync_conn {TYPE_2__ v6; TYPE_1__ v4; } ;
struct ip_vs_sync_v6 {int dummy; } ;
struct ip_vs_sync_v4 {int dummy; } ;
struct ip_vs_sync_conn_options {int dummy; } ;
struct ip_vs_protocol {unsigned int num_states; int /*<<< orphan*/  name; } ;
struct ip_vs_conn_param {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int __u32 ;

/* Variables and functions */
 unsigned int AF_INET ; 
 unsigned int AF_INET6 ; 
 int IPVS_OPT_F_PARAM ; 
 int /*<<< orphan*/  IPVS_OPT_F_PE_DATA ; 
 int /*<<< orphan*/  IPVS_OPT_F_PE_NAME ; 
 int IPVS_OPT_F_SEQ_DATA ; 
#define  IPVS_OPT_PE_DATA 130 
#define  IPVS_OPT_PE_NAME 129 
#define  IPVS_OPT_SEQ_DATA 128 
 int IP_VS_CONN_F_BACKUP_MASK ; 
 int IP_VS_CONN_F_SYNC ; 
 int IP_VS_CONN_F_TEMPLATE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  IP_VS_PEDATA_MAXLEN ; 
 int /*<<< orphan*/  IP_VS_PENAME_MAXLEN ; 
 int STYPE_F_INET6 ; 
 scalar_t__ FUNC1 (unsigned int,union ip_vs_sync_conn*,struct ip_vs_conn_param*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_vs_conn_param*,int,unsigned int,int,unsigned int,union nf_inet_addr*,int /*<<< orphan*/ ,int,int,struct ip_vs_sync_conn_options*,struct ip_vs_protocol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int*,struct ip_vs_sync_conn_options*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,unsigned int*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 struct ip_vs_protocol* FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC8(__u8 *p, __u8 *msg_end)
{
	struct ip_vs_sync_conn_options opt;
	union  ip_vs_sync_conn *s;
	struct ip_vs_protocol *pp;
	struct ip_vs_conn_param param;
	__u32 flags;
	unsigned int af, state, pe_data_len=0, pe_name_len=0;
	__u8 *pe_data=NULL, *pe_name=NULL;
	__u32 opt_flags=0;
	int retc=0;

	s = (union ip_vs_sync_conn *) p;

	if (s->v6.type & STYPE_F_INET6) {
#ifdef CONFIG_IP_VS_IPV6
		af = AF_INET6;
		p += sizeof(struct ip_vs_sync_v6);
#else
		FUNC0(3,"BACKUP, IPv6 msg received, and IPVS is not compiled for IPv6\n");
		retc = 10;
		goto out;
#endif
	} else if (!s->v4.type) {
		af = AF_INET;
		p += sizeof(struct ip_vs_sync_v4);
	} else {
		return -10;
	}
	if (p > msg_end)
		return -20;

	/* Process optional params check Type & Len. */
	while (p < msg_end) {
		int ptype;
		int plen;

		if (p+2 > msg_end)
			return -30;
		ptype = *(p++);
		plen  = *(p++);

		if (!plen || ((p + plen) > msg_end))
			return -40;
		/* Handle seq option  p = param data */
		switch (ptype & ~IPVS_OPT_F_PARAM) {
		case IPVS_OPT_SEQ_DATA:
			if (FUNC3(p, plen, &opt_flags, &opt))
				return -50;
			break;

		case IPVS_OPT_PE_DATA:
			if (FUNC4(p, plen, &pe_data_len, &pe_data,
					   IP_VS_PEDATA_MAXLEN, &opt_flags,
					   IPVS_OPT_F_PE_DATA))
				return -60;
			break;

		case IPVS_OPT_PE_NAME:
			if (FUNC4(p, plen,&pe_name_len, &pe_name,
					   IP_VS_PENAME_MAXLEN, &opt_flags,
					   IPVS_OPT_F_PE_NAME))
				return -70;
			break;

		default:
			/* Param data mandatory ? */
			if (!(ptype & IPVS_OPT_F_PARAM)) {
				FUNC0(3, "BACKUP, Unknown mandatory param %d found\n",
					  ptype & ~IPVS_OPT_F_PARAM);
				retc = 20;
				goto out;
			}
		}
		p += plen;  /* Next option */
	}

	/* Get flags and Mask off unsupported */
	flags  = FUNC6(s->v4.flags) & IP_VS_CONN_F_BACKUP_MASK;
	flags |= IP_VS_CONN_F_SYNC;
	state = FUNC7(s->v4.state);

	if (!(flags & IP_VS_CONN_F_TEMPLATE)) {
		pp = FUNC5(s->v4.protocol);
		if (!pp) {
			FUNC0(3,"BACKUP, Unsupported protocol %u\n",
				s->v4.protocol);
			retc = 30;
			goto out;
		}
		if (state >= pp->num_states) {
			FUNC0(3, "BACKUP, Invalid %s state %u\n",
				pp->name, state);
			retc = 40;
			goto out;
		}
	} else {
		/* protocol in templates is not used for state/timeout */
		pp = NULL;
		if (state > 0) {
			FUNC0(3, "BACKUP, Invalid template state %u\n",
				state);
			state = 0;
		}
	}
	if (FUNC1(af, s, &param,
					pe_data, pe_data_len,
					pe_name, pe_name_len)) {
		retc = 50;
		goto out;
	}
	/* If only IPv4, just silent skip IPv6 */
	if (af == AF_INET)
		FUNC2(&param, flags, state, s->v4.protocol, af,
				(union nf_inet_addr *)&s->v4.daddr, s->v4.dport,
				FUNC6(s->v4.timeout), FUNC6(s->v4.fwmark),
				(opt_flags & IPVS_OPT_F_SEQ_DATA ? &opt : NULL),
				pp);
#ifdef CONFIG_IP_VS_IPV6
	else
		ip_vs_proc_conn(&param, flags, state, s->v6.protocol, af,
				(union nf_inet_addr *)&s->v6.daddr, s->v6.dport,
				ntohl(s->v6.timeout), ntohl(s->v6.fwmark),
				(opt_flags & IPVS_OPT_F_SEQ_DATA ? &opt : NULL),
				pp);
#endif
	return 0;
	/* Error exit */
out:
	FUNC0(2, "BACKUP, Single msg dropped err:%d\n", retc);
	return retc;

}