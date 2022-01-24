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
struct tcphdr {scalar_t__ doff; scalar_t__ fin; scalar_t__ syn; scalar_t__ rst; int /*<<< orphan*/  ack; scalar_t__ urg; scalar_t__ ece; scalar_t__ cwr; } ;
struct net_lro_desc {scalar_t__ tcp_rcv_tsval; } ;
struct iphdr {scalar_t__ ihl; int /*<<< orphan*/  tot_len; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IPH_LEN_WO_OPTIONS ; 
 scalar_t__ TCPH_LEN_WO_OPTIONS ; 
 scalar_t__ TCPH_LEN_W_TIMESTAMP ; 
 int TCPOLEN_TIMESTAMP ; 
 int TCPOPT_NOP ; 
 int TCPOPT_TIMESTAMP ; 
 scalar_t__ FUNC1 (struct iphdr*,struct tcphdr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct iphdr*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct iphdr *iph, struct tcphdr *tcph,
			    int len, struct net_lro_desc *lro_desc)
{
        /* check ip header: don't aggregate padded frames */
	if (FUNC6(iph->tot_len) != len)
		return -1;

	if (FUNC1(iph, tcph) == 0)
		return -1;

	if (iph->ihl != IPH_LEN_WO_OPTIONS)
		return -1;

	if (tcph->cwr || tcph->ece || tcph->urg || !tcph->ack
	    || tcph->rst || tcph->syn || tcph->fin)
		return -1;

	if (FUNC0(FUNC4(iph)))
		return -1;

	if (tcph->doff != TCPH_LEN_WO_OPTIONS
	    && tcph->doff != TCPH_LEN_W_TIMESTAMP)
		return -1;

	/* check tcp options (only timestamp allowed) */
	if (tcph->doff == TCPH_LEN_W_TIMESTAMP) {
		__be32 *topt = (__be32 *)(tcph + 1);

		if (*topt != FUNC3((TCPOPT_NOP << 24) | (TCPOPT_NOP << 16)
				   | (TCPOPT_TIMESTAMP << 8)
				   | TCPOLEN_TIMESTAMP))
			return -1;

		/* timestamp should be in right order */
		topt++;
		if (lro_desc && FUNC2(FUNC5(lro_desc->tcp_rcv_tsval),
				      FUNC5(*topt)))
			return -1;

		/* timestamp reply should not be zero */
		topt++;
		if (*topt == 0)
			return -1;
	}

	return 0;
}