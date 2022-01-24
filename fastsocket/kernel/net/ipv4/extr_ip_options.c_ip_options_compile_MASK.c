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
struct timespec {int tv_sec; int tv_nsec; } ;
struct sk_buff {int dummy; } ;
struct rtable {unsigned char rt_spec_dst; } ;
struct net {int dummy; } ;
struct iphdr {int dummy; } ;
struct ip_options {unsigned char* __data; int optlen; int is_changed; int srr; unsigned char faddr; int is_strictroute; int rr; int rr_needaddr; int ts; int ts_needtime; int ts_needaddr; int router_alert; int cipso; } ;
typedef  unsigned char __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_RAW ; 
 int EINVAL ; 
 int /*<<< orphan*/  ICMP_PARAMETERPROB ; 
#define  IPOPT_CIPSO 140 
#define  IPOPT_END 139 
#define  IPOPT_LSRR 138 
#define  IPOPT_NOOP 137 
#define  IPOPT_RA 136 
#define  IPOPT_RR 135 
#define  IPOPT_SEC 134 
#define  IPOPT_SID 133 
#define  IPOPT_SSRR 132 
#define  IPOPT_TIMESTAMP 131 
#define  IPOPT_TS_PRESPEC 130 
#define  IPOPT_TS_TSANDADDR 129 
#define  IPOPT_TS_TSONLY 128 
 int MSEC_PER_SEC ; 
 int NSEC_PER_MSEC ; 
 int /*<<< orphan*/  RTN_UNICAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned char**) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*) ; 
 unsigned char FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,unsigned char) ; 
 int /*<<< orphan*/ * FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char*,int) ; 
 struct rtable* FUNC9 (struct sk_buff*) ; 

int FUNC10(struct net *net,
		       struct ip_options * opt, struct sk_buff * skb)
{
	int l;
	unsigned char * iph;
	unsigned char * optptr;
	int optlen;
	unsigned char * pp_ptr = NULL;
	struct rtable *rt = NULL;

	if (skb != NULL) {
		rt = FUNC9(skb);
		optptr = (unsigned char *)&(FUNC6(skb)[1]);
	} else
		optptr = opt->__data;
	iph = optptr - sizeof(struct iphdr);

	for (l = opt->optlen; l > 0; ) {
		switch (*optptr) {
		      case IPOPT_END:
			for (optptr++, l--; l>0; optptr++, l--) {
				if (*optptr != IPOPT_END) {
					*optptr = IPOPT_END;
					opt->is_changed = 1;
				}
			}
			goto eol;
		      case IPOPT_NOOP:
			l--;
			optptr++;
			continue;
		}
		optlen = optptr[1];
		if (optlen<2 || optlen>l) {
			pp_ptr = optptr;
			goto error;
		}
		switch (*optptr) {
		      case IPOPT_SSRR:
		      case IPOPT_LSRR:
			if (optlen < 3) {
				pp_ptr = optptr + 1;
				goto error;
			}
			if (optptr[2] < 4) {
				pp_ptr = optptr + 2;
				goto error;
			}
			/* NB: cf RFC-1812 5.2.4.1 */
			if (opt->srr) {
				pp_ptr = optptr;
				goto error;
			}
			if (!skb) {
				if (optptr[2] != 4 || optlen < 7 || ((optlen-3) & 3)) {
					pp_ptr = optptr + 1;
					goto error;
				}
				FUNC7(&opt->faddr, &optptr[3], 4);
				if (optlen > 7)
					FUNC8(&optptr[3], &optptr[7], optlen-7);
			}
			opt->is_strictroute = (optptr[0] == IPOPT_SSRR);
			opt->srr = optptr - iph;
			break;
		      case IPOPT_RR:
			if (opt->rr) {
				pp_ptr = optptr;
				goto error;
			}
			if (optlen < 3) {
				pp_ptr = optptr + 1;
				goto error;
			}
			if (optptr[2] < 4) {
				pp_ptr = optptr + 2;
				goto error;
			}
			if (optptr[2] <= optlen) {
				if (optptr[2]+3 > optlen) {
					pp_ptr = optptr + 2;
					goto error;
				}
				if (skb) {
					FUNC7(&optptr[optptr[2]-1], &rt->rt_spec_dst, 4);
					opt->is_changed = 1;
				}
				optptr[2] += 4;
				opt->rr_needaddr = 1;
			}
			opt->rr = optptr - iph;
			break;
		      case IPOPT_TIMESTAMP:
			if (opt->ts) {
				pp_ptr = optptr;
				goto error;
			}
			if (optlen < 4) {
				pp_ptr = optptr + 1;
				goto error;
			}
			if (optptr[2] < 5) {
				pp_ptr = optptr + 2;
				goto error;
			}
			if (optptr[2] <= optlen) {
				__be32 *timeptr = NULL;
				if (optptr[2]+3 > optptr[1]) {
					pp_ptr = optptr + 2;
					goto error;
				}
				switch (optptr[3]&0xF) {
				      case IPOPT_TS_TSONLY:
					opt->ts = optptr - iph;
					if (skb)
						timeptr = (__be32*)&optptr[optptr[2]-1];
					opt->ts_needtime = 1;
					optptr[2] += 4;
					break;
				      case IPOPT_TS_TSANDADDR:
					if (optptr[2]+7 > optptr[1]) {
						pp_ptr = optptr + 2;
						goto error;
					}
					opt->ts = optptr - iph;
					if (skb) {
						FUNC7(&optptr[optptr[2]-1], &rt->rt_spec_dst, 4);
						timeptr = (__be32*)&optptr[optptr[2]+3];
					}
					opt->ts_needaddr = 1;
					opt->ts_needtime = 1;
					optptr[2] += 8;
					break;
				      case IPOPT_TS_PRESPEC:
					if (optptr[2]+7 > optptr[1]) {
						pp_ptr = optptr + 2;
						goto error;
					}
					opt->ts = optptr - iph;
					{
						__be32 addr;
						FUNC7(&addr, &optptr[optptr[2]-1], 4);
						if (FUNC5(net, addr) == RTN_UNICAST)
							break;
						if (skb)
							timeptr = (__be32*)&optptr[optptr[2]+3];
					}
					opt->ts_needtime = 1;
					optptr[2] += 8;
					break;
				      default:
					if (!skb && !FUNC0(CAP_NET_RAW)) {
						pp_ptr = optptr + 3;
						goto error;
					}
					break;
				}
				if (timeptr) {
					struct timespec tv;
					__be32  midtime;
					FUNC2(&tv);
					midtime = FUNC3((tv.tv_sec % 86400) * MSEC_PER_SEC + tv.tv_nsec / NSEC_PER_MSEC);
					FUNC7(timeptr, &midtime, sizeof(__be32));
					opt->is_changed = 1;
				}
			} else {
				unsigned overflow = optptr[3]>>4;
				if (overflow == 15) {
					pp_ptr = optptr + 3;
					goto error;
				}
				opt->ts = optptr - iph;
				if (skb) {
					optptr[3] = (optptr[3]&0xF)|((overflow+1)<<4);
					opt->is_changed = 1;
				}
			}
			break;
		      case IPOPT_RA:
			if (optlen < 4) {
				pp_ptr = optptr + 1;
				goto error;
			}
			if (optptr[2] == 0 && optptr[3] == 0)
				opt->router_alert = optptr - iph;
			break;
		      case IPOPT_CIPSO:
			if ((!skb && !FUNC0(CAP_NET_RAW)) || opt->cipso) {
				pp_ptr = optptr;
				goto error;
			}
			opt->cipso = optptr - iph;
			if (FUNC1(skb, &optptr)) {
				pp_ptr = optptr;
				goto error;
			}
			break;
		      case IPOPT_SEC:
		      case IPOPT_SID:
		      default:
			if (!skb && !FUNC0(CAP_NET_RAW)) {
				pp_ptr = optptr;
				goto error;
			}
			break;
		}
		l -= optlen;
		optptr += optlen;
	}

eol:
	if (!pp_ptr)
		return 0;

error:
	if (skb) {
		FUNC4(skb, ICMP_PARAMETERPROB, 0, FUNC3((pp_ptr-iph)<<24));
	}
	return -EINVAL;
}