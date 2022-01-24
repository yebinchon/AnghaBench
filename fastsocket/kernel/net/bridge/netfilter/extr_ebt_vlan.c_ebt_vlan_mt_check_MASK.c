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
struct xt_mtchk_param {struct ebt_entry* entryinfo; struct ebt_vlan_info* matchinfo; } ;
struct ebt_vlan_info {int bitmask; int invflags; unsigned short id; unsigned short prio; scalar_t__ encap; } ;
struct ebt_entry {scalar_t__ ethproto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned short,...) ; 
 int EBT_VLAN_ENCAP ; 
 int EBT_VLAN_ID ; 
 int EBT_VLAN_MASK ; 
 int EBT_VLAN_PRIO ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 unsigned short ETH_ZLEN ; 
 scalar_t__ FUNC1 (int) ; 
 unsigned short VLAN_GROUP_ARRAY_LEN ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned short FUNC3 (scalar_t__) ; 

__attribute__((used)) static bool FUNC4(const struct xt_mtchk_param *par)
{
	struct ebt_vlan_info *info = par->matchinfo;
	const struct ebt_entry *e = par->entryinfo;

	/* Is it 802.1Q frame checked? */
	if (e->ethproto != FUNC2(ETH_P_8021Q)) {
		FUNC0
		    ("passed entry proto %2.4X is not 802.1Q (8100)\n",
		     (unsigned short) FUNC3(e->ethproto));
		return false;
	}

	/* Check for bitmask range
	 * True if even one bit is out of mask */
	if (info->bitmask & ~EBT_VLAN_MASK) {
		FUNC0("bitmask %2X is out of mask (%2X)\n",
			  info->bitmask, EBT_VLAN_MASK);
		return false;
	}

	/* Check for inversion flags range */
	if (info->invflags & ~EBT_VLAN_MASK) {
		FUNC0("inversion flags %2X is out of mask (%2X)\n",
			  info->invflags, EBT_VLAN_MASK);
		return false;
	}

	/* Reserved VLAN ID (VID) values
	 * -----------------------------
	 * 0 - The null VLAN ID.
	 * 1 - The default Port VID (PVID)
	 * 0x0FFF - Reserved for implementation use.
	 * if_vlan.h: VLAN_GROUP_ARRAY_LEN 4096. */
	if (FUNC1(EBT_VLAN_ID)) {
		if (!!info->id) { /* if id!=0 => check vid range */
			if (info->id > VLAN_GROUP_ARRAY_LEN) {
				FUNC0
				    ("id %d is out of range (1-4096)\n",
				     info->id);
				return false;
			}
			/* Note: This is valid VLAN-tagged frame point.
			 * Any value of user_priority are acceptable,
			 * but should be ignored according to 802.1Q Std.
			 * So we just drop the prio flag. */
			info->bitmask &= ~EBT_VLAN_PRIO;
		}
		/* Else, id=0 (null VLAN ID)  => user_priority range (any?) */
	}

	if (FUNC1(EBT_VLAN_PRIO)) {
		if ((unsigned char) info->prio > 7) {
			FUNC0("prio %d is out of range (0-7)\n",
			     info->prio);
			return false;
		}
	}
	/* Check for encapsulated proto range - it is possible to be
	 * any value for u_short range.
	 * if_ether.h:  ETH_ZLEN        60   -  Min. octets in frame sans FCS */
	if (FUNC1(EBT_VLAN_ENCAP)) {
		if ((unsigned short) FUNC3(info->encap) < ETH_ZLEN) {
			FUNC0
			    ("encap frame length %d is less than minimal\n",
			     FUNC3(info->encap));
			return false;
		}
	}

	return true;
}