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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct tcf_result {scalar_t__ classid; } ;
struct tcf_proto {scalar_t__ root; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int mask; int offset; int key; } ;
struct rsvp_session {scalar_t__* dst; scalar_t__ protocol; scalar_t__ tunnelid; struct rsvp_filter** ht; TYPE_1__ dpi; struct rsvp_session* next; } ;
struct rsvp_head {struct rsvp_session** ht; } ;
struct TYPE_4__ {int mask; int offset; int key; } ;
struct rsvp_filter {scalar_t__* src; scalar_t__ tunnelhdr; struct tcf_result res; struct rsvp_filter* next; TYPE_2__ spi; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {scalar_t__ saddr; scalar_t__ daddr; scalar_t__ nexthdr; scalar_t__ protocol; int ihl; int frag_off; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int IP_MF ; 
 int IP_OFFSET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int RSVP_DST_LEN ; 
 unsigned int FUNC1 (scalar_t__*,scalar_t__,scalar_t__) ; 
 unsigned int FUNC2 (scalar_t__*) ; 
 int FUNC3 (int) ; 
 struct iphdr* FUNC4 (struct sk_buff*) ; 
 struct ipv6hdr* FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct tcf_proto *tp,
			 struct tcf_result *res)
{
	struct rsvp_session **sht = ((struct rsvp_head*)tp->root)->ht;
	struct rsvp_session *s;
	struct rsvp_filter *f;
	unsigned h1, h2;
	__be32 *dst, *src;
	u8 protocol;
	u8 tunnelid = 0;
	u8 *xprt;
#if RSVP_DST_LEN == 4
	struct ipv6hdr *nhptr = ipv6_hdr(skb);
#else
	struct iphdr *nhptr = FUNC4(skb);
#endif

restart:

#if RSVP_DST_LEN == 4
	src = &nhptr->saddr.s6_addr32[0];
	dst = &nhptr->daddr.s6_addr32[0];
	protocol = nhptr->nexthdr;
	xprt = ((u8*)nhptr) + sizeof(struct ipv6hdr);
#else
	src = &nhptr->saddr;
	dst = &nhptr->daddr;
	protocol = nhptr->protocol;
	xprt = ((u8*)nhptr) + (nhptr->ihl<<2);
	if (nhptr->frag_off & FUNC3(IP_MF|IP_OFFSET))
		return -1;
#endif

	h1 = FUNC1(dst, protocol, tunnelid);
	h2 = FUNC2(src);

	for (s = sht[h1]; s; s = s->next) {
		if (dst[RSVP_DST_LEN-1] == s->dst[RSVP_DST_LEN-1] &&
		    protocol == s->protocol &&
		    !(s->dpi.mask & (*(u32*)(xprt+s->dpi.offset)^s->dpi.key))
#if RSVP_DST_LEN == 4
		    && dst[0] == s->dst[0]
		    && dst[1] == s->dst[1]
		    && dst[2] == s->dst[2]
#endif
		    && tunnelid == s->tunnelid) {

			for (f = s->ht[h2]; f; f = f->next) {
				if (src[RSVP_DST_LEN-1] == f->src[RSVP_DST_LEN-1] &&
				    !(f->spi.mask & (*(u32*)(xprt+f->spi.offset)^f->spi.key))
#if RSVP_DST_LEN == 4
				    && src[0] == f->src[0]
				    && src[1] == f->src[1]
				    && src[2] == f->src[2]
#endif
				    ) {
					*res = f->res;
					FUNC0();

matched:
					if (f->tunnelhdr == 0)
						return 0;

					tunnelid = f->res.classid;
					nhptr = (void*)(xprt + f->tunnelhdr - sizeof(*nhptr));
					goto restart;
				}
			}

			/* And wildcard bucket... */
			for (f = s->ht[16]; f; f = f->next) {
				*res = f->res;
				FUNC0();
				goto matched;
			}
			return -1;
		}
	}
	return -1;
}