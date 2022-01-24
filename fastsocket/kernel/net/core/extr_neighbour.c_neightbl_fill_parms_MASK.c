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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct neigh_parms {int /*<<< orphan*/  locktime; int /*<<< orphan*/  proxy_delay; int /*<<< orphan*/  anycast_delay; int /*<<< orphan*/  retrans_time; int /*<<< orphan*/  delay_probe_time; int /*<<< orphan*/  gc_staletime; int /*<<< orphan*/  base_reachable_time; int /*<<< orphan*/  reachable_time; int /*<<< orphan*/  mcast_probes; int /*<<< orphan*/  ucast_probes; int /*<<< orphan*/  app_probes; int /*<<< orphan*/  proxy_qlen; int /*<<< orphan*/  queue_len; int /*<<< orphan*/  refcnt; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  NDTA_PARMS ; 
 int /*<<< orphan*/  NDTPA_ANYCAST_DELAY ; 
 int /*<<< orphan*/  NDTPA_APP_PROBES ; 
 int /*<<< orphan*/  NDTPA_BASE_REACHABLE_TIME ; 
 int /*<<< orphan*/  NDTPA_DELAY_PROBE_TIME ; 
 int /*<<< orphan*/  NDTPA_GC_STALETIME ; 
 int /*<<< orphan*/  NDTPA_IFINDEX ; 
 int /*<<< orphan*/  NDTPA_LOCKTIME ; 
 int /*<<< orphan*/  NDTPA_MCAST_PROBES ; 
 int /*<<< orphan*/  NDTPA_PROXY_DELAY ; 
 int /*<<< orphan*/  NDTPA_PROXY_QLEN ; 
 int /*<<< orphan*/  NDTPA_QUEUE_LEN ; 
 int /*<<< orphan*/  NDTPA_REACHABLE_TIME ; 
 int /*<<< orphan*/  NDTPA_REFCNT ; 
 int /*<<< orphan*/  NDTPA_RETRANS_TIME ; 
 int /*<<< orphan*/  NDTPA_UCAST_PROBES ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 int FUNC4 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct neigh_parms *parms)
{
	struct nlattr *nest;

	nest = FUNC5(skb, NDTA_PARMS);
	if (nest == NULL)
		return -ENOBUFS;

	if (parms->dev)
		FUNC1(skb, NDTPA_IFINDEX, parms->dev->ifindex);

	FUNC1(skb, NDTPA_REFCNT, FUNC2(&parms->refcnt));
	FUNC1(skb, NDTPA_QUEUE_LEN, parms->queue_len);
	FUNC1(skb, NDTPA_PROXY_QLEN, parms->proxy_qlen);
	FUNC1(skb, NDTPA_APP_PROBES, parms->app_probes);
	FUNC1(skb, NDTPA_UCAST_PROBES, parms->ucast_probes);
	FUNC1(skb, NDTPA_MCAST_PROBES, parms->mcast_probes);
	FUNC0(skb, NDTPA_REACHABLE_TIME, parms->reachable_time);
	FUNC0(skb, NDTPA_BASE_REACHABLE_TIME,
		      parms->base_reachable_time);
	FUNC0(skb, NDTPA_GC_STALETIME, parms->gc_staletime);
	FUNC0(skb, NDTPA_DELAY_PROBE_TIME, parms->delay_probe_time);
	FUNC0(skb, NDTPA_RETRANS_TIME, parms->retrans_time);
	FUNC0(skb, NDTPA_ANYCAST_DELAY, parms->anycast_delay);
	FUNC0(skb, NDTPA_PROXY_DELAY, parms->proxy_delay);
	FUNC0(skb, NDTPA_LOCKTIME, parms->locktime);

	return FUNC4(skb, nest);

nla_put_failure:
	FUNC3(skb, nest);
	return -EMSGSIZE;
}