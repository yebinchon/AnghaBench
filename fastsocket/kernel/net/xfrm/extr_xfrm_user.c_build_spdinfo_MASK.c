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
typedef  int /*<<< orphan*/  u32 ;
struct xfrmu_spdinfo {int /*<<< orphan*/  spdhmcnt; int /*<<< orphan*/  spdhcnt; int /*<<< orphan*/  fwdscnt; int /*<<< orphan*/  outscnt; int /*<<< orphan*/  inscnt; int /*<<< orphan*/  fwdcnt; int /*<<< orphan*/  outcnt; int /*<<< orphan*/  incnt; } ;
struct xfrmu_spdhinfo {int /*<<< orphan*/  spdhmcnt; int /*<<< orphan*/  spdhcnt; int /*<<< orphan*/  fwdscnt; int /*<<< orphan*/  outscnt; int /*<<< orphan*/  inscnt; int /*<<< orphan*/  fwdcnt; int /*<<< orphan*/  outcnt; int /*<<< orphan*/  incnt; } ;
struct xfrmk_spdinfo {int /*<<< orphan*/  spdhmcnt; int /*<<< orphan*/  spdhcnt; int /*<<< orphan*/  fwdscnt; int /*<<< orphan*/  outscnt; int /*<<< orphan*/  inscnt; int /*<<< orphan*/  fwdcnt; int /*<<< orphan*/  outcnt; int /*<<< orphan*/  incnt; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
typedef  int /*<<< orphan*/  sph ;
typedef  int /*<<< orphan*/  spc ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct xfrmu_spdinfo*) ; 
 int /*<<< orphan*/  XFRMA_SPD_HINFO ; 
 int /*<<< orphan*/  XFRMA_SPD_INFO ; 
 int /*<<< orphan*/  XFRM_MSG_NEWSPDINFO ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/ * FUNC2 (struct nlmsghdr*) ; 
 int FUNC3 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfrmk_spdinfo*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, u32 pid, u32 seq, u32 flags)
{
	struct xfrmk_spdinfo si;
	struct xfrmu_spdinfo spc;
	struct xfrmu_spdhinfo sph;
	struct nlmsghdr *nlh;
	u32 *f;

	nlh = FUNC4(skb, pid, seq, XFRM_MSG_NEWSPDINFO, sizeof(u32), 0);
	if (nlh == NULL) /* shouldnt really happen ... */
		return -EMSGSIZE;

	f = FUNC2(nlh);
	*f = flags;
	FUNC5(&si);
	spc.incnt = si.incnt;
	spc.outcnt = si.outcnt;
	spc.fwdcnt = si.fwdcnt;
	spc.inscnt = si.inscnt;
	spc.outscnt = si.outscnt;
	spc.fwdscnt = si.fwdscnt;
	sph.spdhcnt = si.spdhcnt;
	sph.spdhmcnt = si.spdhmcnt;

	FUNC0(skb, XFRMA_SPD_INFO, sizeof(spc), &spc);
	FUNC0(skb, XFRMA_SPD_HINFO, sizeof(sph), &sph);

	return FUNC3(skb, nlh);

nla_put_failure:
	FUNC1(skb, nlh);
	return -EMSGSIZE;
}