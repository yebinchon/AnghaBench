#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  caddr; void* timeout; void* fwmark; int /*<<< orphan*/  dport; int /*<<< orphan*/  vport; int /*<<< orphan*/  cport; int /*<<< orphan*/  protocol; void* state; void* flags; void* ver_size; int /*<<< orphan*/  type; } ;
struct TYPE_11__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  caddr; } ;
union ip_vs_sync_conn {TYPE_5__ v4; TYPE_2__ v6; } ;
struct ip_vs_sync_v6 {int dummy; } ;
struct ip_vs_sync_v4 {int dummy; } ;
struct ip_vs_sync_mesg {unsigned int size; int /*<<< orphan*/  nr_conns; } ;
struct ip_vs_sync_conn_options {int dummy; } ;
struct ip_vs_seq {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/  ip; int /*<<< orphan*/  in6; } ;
struct TYPE_13__ {int /*<<< orphan*/  ip; int /*<<< orphan*/  in6; } ;
struct TYPE_12__ {int /*<<< orphan*/  ip; int /*<<< orphan*/  in6; } ;
struct ip_vs_conn {int flags; int pe_data_len; scalar_t__ af; unsigned int state; int fwmark; int timeout; int /*<<< orphan*/  in_pkts; struct ip_vs_conn* control; TYPE_1__* pe; int /*<<< orphan*/  pe_data; int /*<<< orphan*/  out_seq; int /*<<< orphan*/  in_seq; TYPE_6__ daddr; TYPE_4__ vaddr; TYPE_3__ caddr; int /*<<< orphan*/  dport; int /*<<< orphan*/  vport; int /*<<< orphan*/  cport; int /*<<< orphan*/  protocol; int /*<<< orphan*/  dest; } ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_16__ {scalar_t__ head; scalar_t__ end; struct ip_vs_sync_mesg* mesg; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int HZ ; 
 int /*<<< orphan*/  IPVS_OPT_PE_DATA ; 
 int /*<<< orphan*/  IPVS_OPT_PE_NAME ; 
 int /*<<< orphan*/  IPVS_OPT_SEQ_DATA ; 
 int IP_VS_CONN_F_HASHED ; 
 int IP_VS_CONN_F_ONE_PACKET ; 
 int IP_VS_CONN_F_SEQ_MASK ; 
 int IP_VS_CONN_F_TEMPLATE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IP_VS_PENAME_MAXLEN ; 
 int /*<<< orphan*/  STYPE_F_INET6 ; 
 unsigned int SVER_MASK ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 TYPE_7__* curr_sb ; 
 int /*<<< orphan*/  curr_sb_lock ; 
 int /*<<< orphan*/  FUNC2 (struct ip_vs_seq*,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (unsigned int) ; 
 TYPE_7__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct ip_vs_conn*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ip_vs_conn*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ sysctl_ip_vs_sync_ver ; 
 int FUNC15 () ; 

void FUNC16(struct ip_vs_conn *cp, int pkts)
{
	struct ip_vs_sync_mesg *m;
	union ip_vs_sync_conn *s;
	__u8 *p;
	unsigned int len, pe_name_len, pad;

	/* Handle old version of the protocol */
	if (sysctl_ip_vs_sync_ver == 0) {
		FUNC7(cp, pkts);
		return;
	}
	/* Do not sync ONE PACKET */
	if (cp->flags & IP_VS_CONN_F_ONE_PACKET)
		goto control;
sloop:
	if (!FUNC6(cp, pkts))
		goto control;

	/* Sanity checks */
	pe_name_len = 0;
	if (cp->pe_data_len) {
		if (!cp->pe_data || !cp->dest) {
			FUNC0("SYNC, connection pe_data invalid\n");
			return;
		}
		pe_name_len = FUNC14(cp->pe->name, IP_VS_PENAME_MAXLEN);
	}

	FUNC12(&curr_sb_lock);

#ifdef CONFIG_IP_VS_IPV6
	if (cp->af == AF_INET6)
		len = sizeof(struct ip_vs_sync_v6);
	else
#endif
		len = sizeof(struct ip_vs_sync_v4);

	if (cp->flags & IP_VS_CONN_F_SEQ_MASK)
		len += sizeof(struct ip_vs_sync_conn_options) + 2;

	if (cp->pe_data_len)
		len += cp->pe_data_len + 2;	/* + Param hdr field */
	if (pe_name_len)
		len += pe_name_len + 2;

	/* check if there is a space for this one  */
	pad = 0;
	if (curr_sb) {
		pad = (4 - (size_t)curr_sb->head) & 3;
		if (curr_sb->head + len + pad > curr_sb->end) {
			FUNC11(curr_sb);
			curr_sb = NULL;
			pad = 0;
		}
	}

	if (!curr_sb) {
		if (!(curr_sb=FUNC5())) {
			FUNC13(&curr_sb_lock);
			FUNC10("ip_vs_sync_buff_create failed.\n");
			return;
		}
	}

	m = curr_sb->mesg;
	p = curr_sb->head;
	curr_sb->head += pad + len;
	m->size += pad + len;
	/* Add ev. padding from prev. sync_conn */
	while (pad--)
		*(p++) = 0;

	s = (union ip_vs_sync_conn *)p;

	/* Set message type  & copy members */
	s->v4.type = (cp->af == AF_INET6 ? STYPE_F_INET6 : 0);
	s->v4.ver_size = FUNC4(len & SVER_MASK);	/* Version 0 */
	s->v4.flags = FUNC3(cp->flags & ~IP_VS_CONN_F_HASHED);
	s->v4.state = FUNC4(cp->state);
	s->v4.protocol = cp->protocol;
	s->v4.cport = cp->cport;
	s->v4.vport = cp->vport;
	s->v4.dport = cp->dport;
	s->v4.fwmark = FUNC3(cp->fwmark);
	s->v4.timeout = FUNC3(cp->timeout / HZ);
	m->nr_conns++;

#ifdef CONFIG_IP_VS_IPV6
	if (cp->af == AF_INET6) {
		p += sizeof(struct ip_vs_sync_v6);
		ipv6_addr_copy(&s->v6.caddr, &cp->caddr.in6);
		ipv6_addr_copy(&s->v6.vaddr, &cp->vaddr.in6);
		ipv6_addr_copy(&s->v6.daddr, &cp->daddr.in6);
	} else
#endif
	{
		p += sizeof(struct ip_vs_sync_v4);	/* options ptr */
		s->v4.caddr = cp->caddr.ip;
		s->v4.vaddr = cp->vaddr.ip;
		s->v4.daddr = cp->daddr.ip;
	}
	if (cp->flags & IP_VS_CONN_F_SEQ_MASK) {
		*(p++) = IPVS_OPT_SEQ_DATA;
		*(p++) = sizeof(struct ip_vs_sync_conn_options);
		FUNC2((struct ip_vs_seq *)p, &cp->in_seq);
		p += sizeof(struct ip_vs_seq);
		FUNC2((struct ip_vs_seq *)p, &cp->out_seq);
		p += sizeof(struct ip_vs_seq);
	}
	/* Handle pe data */
	if (cp->pe_data_len && cp->pe_data) {
		*(p++) = IPVS_OPT_PE_DATA;
		*(p++) = cp->pe_data_len;
		FUNC9(p, cp->pe_data, cp->pe_data_len);
		p += cp->pe_data_len;
		if (pe_name_len) {
			/* Add PE_NAME */
			*(p++) = IPVS_OPT_PE_NAME;
			*(p++) = pe_name_len;
			FUNC9(p, cp->pe->name, pe_name_len);
			p += pe_name_len;
		}
	}

	FUNC13(&curr_sb_lock);

control:
	/* synchronize its controller if it has */
	cp = cp->control;
	if (!cp)
		return;
	if (cp->flags & IP_VS_CONN_F_TEMPLATE)
		pkts = FUNC1(1, &cp->in_pkts);
	else
		pkts = FUNC15();
	goto sloop;
}