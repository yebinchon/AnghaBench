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
struct net_device {TYPE_2__* br_port; } ;
struct ethhdr {scalar_t__ h_proto; int* h_source; int* h_dest; } ;
struct ebt_entry {int bitmask; scalar_t__ ethproto; int* sourcemac; int* sourcemsk; int* destmac; int* destmsk; int /*<<< orphan*/  logical_out; int /*<<< orphan*/  logical_in; int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;
struct TYPE_4__ {TYPE_1__* br; } ;
struct TYPE_3__ {struct net_device const* dev; } ;

/* Variables and functions */
 int EBT_802_3 ; 
 int EBT_DESTMAC ; 
 int /*<<< orphan*/  EBT_IDEST ; 
 int /*<<< orphan*/  EBT_IIN ; 
 int /*<<< orphan*/  EBT_ILOGICALIN ; 
 int /*<<< orphan*/  EBT_ILOGICALOUT ; 
 int /*<<< orphan*/  EBT_IOUT ; 
 int /*<<< orphan*/  EBT_IPROTO ; 
 int /*<<< orphan*/  EBT_ISOURCE ; 
 int EBT_NOPROTO ; 
 int EBT_SOURCEMAC ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct net_device const*) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static inline int FUNC3(struct ebt_entry *e, struct ethhdr *h,
   const struct net_device *in, const struct net_device *out)
{
	int verdict, i;

	if (e->bitmask & EBT_802_3) {
		if (FUNC0(FUNC2(h->h_proto) >= 1536, EBT_IPROTO))
			return 1;
	} else if (!(e->bitmask & EBT_NOPROTO) &&
	   FUNC0(e->ethproto != h->h_proto, EBT_IPROTO))
		return 1;

	if (FUNC0(FUNC1(e->in, in), EBT_IIN))
		return 1;
	if (FUNC0(FUNC1(e->out, out), EBT_IOUT))
		return 1;
	if ((!in || !in->br_port) ? 0 : FUNC0(FUNC1(
	   e->logical_in, in->br_port->br->dev), EBT_ILOGICALIN))
		return 1;
	if ((!out || !out->br_port) ? 0 : FUNC0(FUNC1(
	   e->logical_out, out->br_port->br->dev), EBT_ILOGICALOUT))
		return 1;

	if (e->bitmask & EBT_SOURCEMAC) {
		verdict = 0;
		for (i = 0; i < 6; i++)
			verdict |= (h->h_source[i] ^ e->sourcemac[i]) &
			   e->sourcemsk[i];
		if (FUNC0(verdict != 0, EBT_ISOURCE) )
			return 1;
	}
	if (e->bitmask & EBT_DESTMAC) {
		verdict = 0;
		for (i = 0; i < 6; i++)
			verdict |= (h->h_dest[i] ^ e->destmac[i]) &
			   e->destmsk[i];
		if (FUNC0(verdict != 0, EBT_IDEST) )
			return 1;
	}
	return 0;
}