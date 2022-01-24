#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct TYPE_4__ {struct netlbl_domaddr_map* addrsel; struct cipso_v4_doi* cipsov4; } ;
struct TYPE_5__ {int addr; int mask; int valid; } ;
struct netlbl_domaddr_map {int type; struct netlbl_domaddr_map* domain; TYPE_1__ type_def; int /*<<< orphan*/  list6; TYPE_2__ list; int /*<<< orphan*/  list4; } ;
struct netlbl_domaddr6_map {int type; struct netlbl_domaddr6_map* domain; TYPE_1__ type_def; int /*<<< orphan*/  list6; TYPE_2__ list; int /*<<< orphan*/  list4; } ;
struct netlbl_domaddr4_map {int type; struct netlbl_domaddr4_map* domain; TYPE_1__ type_def; int /*<<< orphan*/  list6; TYPE_2__ list; int /*<<< orphan*/  list4; } ;
struct netlbl_dom_map {int type; struct netlbl_dom_map* domain; TYPE_1__ type_def; int /*<<< orphan*/  list6; TYPE_2__ list; int /*<<< orphan*/  list4; } ;
struct netlbl_audit {int dummy; } ;
struct in_addr {int s_addr; } ;
struct in6_addr {int /*<<< orphan*/ * s6_addr32; } ;
struct genl_info {scalar_t__* attrs; } ;
struct cipso_v4_doi {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* NETLBL_NLTYPE_ADDRSELECT ; 
#define  NETLBL_NLTYPE_CIPSOV4 129 
#define  NETLBL_NLTYPE_UNLABELED 128 
 size_t NLBL_MGMT_A_CV4DOI ; 
 size_t NLBL_MGMT_A_DOMAIN ; 
 size_t NLBL_MGMT_A_IPV4ADDR ; 
 size_t NLBL_MGMT_A_IPV4MASK ; 
 size_t NLBL_MGMT_A_IPV6ADDR ; 
 size_t NLBL_MGMT_A_IPV6MASK ; 
 size_t NLBL_MGMT_A_PROTOCOL ; 
 struct cipso_v4_doi* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct cipso_v4_doi*) ; 
 int /*<<< orphan*/  FUNC3 (int*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC4 (struct netlbl_domaddr_map*) ; 
 struct netlbl_domaddr_map* FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 struct netlbl_domaddr_map* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct netlbl_domaddr_map*,struct netlbl_audit*) ; 
 void* FUNC10 (scalar_t__) ; 
 void* FUNC11 (scalar_t__) ; 
 int FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct netlbl_domaddr_map*,scalar_t__,size_t) ; 

__attribute__((used)) static int FUNC14(struct genl_info *info,
				  struct netlbl_audit *audit_info)
{
	int ret_val = -EINVAL;
	struct netlbl_dom_map *entry = NULL;
	struct netlbl_domaddr_map *addrmap = NULL;
	struct cipso_v4_doi *cipsov4 = NULL;
	u32 tmp_val;

	entry = FUNC6(sizeof(*entry), GFP_KERNEL);
	if (entry == NULL) {
		ret_val = -ENOMEM;
		goto add_failure;
	}
	entry->type = FUNC11(info->attrs[NLBL_MGMT_A_PROTOCOL]);
	if (info->attrs[NLBL_MGMT_A_DOMAIN]) {
		size_t tmp_size = FUNC12(info->attrs[NLBL_MGMT_A_DOMAIN]);
		entry->domain = FUNC5(tmp_size, GFP_KERNEL);
		if (entry->domain == NULL) {
			ret_val = -ENOMEM;
			goto add_failure;
		}
		FUNC13(entry->domain,
			    info->attrs[NLBL_MGMT_A_DOMAIN], tmp_size);
	}

	/* NOTE: internally we allow/use a entry->type value of
	 *       NETLBL_NLTYPE_ADDRSELECT but we don't currently allow users
	 *       to pass that as a protocol value because we need to know the
	 *       "real" protocol */

	switch (entry->type) {
	case NETLBL_NLTYPE_UNLABELED:
		break;
	case NETLBL_NLTYPE_CIPSOV4:
		if (!info->attrs[NLBL_MGMT_A_CV4DOI])
			goto add_failure;

		tmp_val = FUNC11(info->attrs[NLBL_MGMT_A_CV4DOI]);
		cipsov4 = FUNC1(tmp_val);
		if (cipsov4 == NULL)
			goto add_failure;
		entry->type_def.cipsov4 = cipsov4;
		break;
	default:
		goto add_failure;
	}

	if (info->attrs[NLBL_MGMT_A_IPV4ADDR]) {
		struct in_addr *addr;
		struct in_addr *mask;
		struct netlbl_domaddr4_map *map;

		addrmap = FUNC6(sizeof(*addrmap), GFP_KERNEL);
		if (addrmap == NULL) {
			ret_val = -ENOMEM;
			goto add_failure;
		}
		FUNC0(&addrmap->list4);
		FUNC0(&addrmap->list6);

		if (FUNC12(info->attrs[NLBL_MGMT_A_IPV4ADDR]) !=
		    sizeof(struct in_addr)) {
			ret_val = -EINVAL;
			goto add_failure;
		}
		if (FUNC12(info->attrs[NLBL_MGMT_A_IPV4MASK]) !=
		    sizeof(struct in_addr)) {
			ret_val = -EINVAL;
			goto add_failure;
		}
		addr = FUNC10(info->attrs[NLBL_MGMT_A_IPV4ADDR]);
		mask = FUNC10(info->attrs[NLBL_MGMT_A_IPV4MASK]);

		map = FUNC6(sizeof(*map), GFP_KERNEL);
		if (map == NULL) {
			ret_val = -ENOMEM;
			goto add_failure;
		}
		map->list.addr = addr->s_addr & mask->s_addr;
		map->list.mask = mask->s_addr;
		map->list.valid = 1;
		map->type = entry->type;
		if (cipsov4)
			map->type_def.cipsov4 = cipsov4;

		ret_val = FUNC7(&map->list, &addrmap->list4);
		if (ret_val != 0) {
			FUNC4(map);
			goto add_failure;
		}

		entry->type = NETLBL_NLTYPE_ADDRSELECT;
		entry->type_def.addrsel = addrmap;
#if defined(CONFIG_IPV6) || defined(CONFIG_IPV6_MODULE)
	} else if (info->attrs[NLBL_MGMT_A_IPV6ADDR]) {
		struct in6_addr *addr;
		struct in6_addr *mask;
		struct netlbl_domaddr6_map *map;

		addrmap = kzalloc(sizeof(*addrmap), GFP_KERNEL);
		if (addrmap == NULL) {
			ret_val = -ENOMEM;
			goto add_failure;
		}
		INIT_LIST_HEAD(&addrmap->list4);
		INIT_LIST_HEAD(&addrmap->list6);

		if (nla_len(info->attrs[NLBL_MGMT_A_IPV6ADDR]) !=
		    sizeof(struct in6_addr)) {
			ret_val = -EINVAL;
			goto add_failure;
		}
		if (nla_len(info->attrs[NLBL_MGMT_A_IPV6MASK]) !=
		    sizeof(struct in6_addr)) {
			ret_val = -EINVAL;
			goto add_failure;
		}
		addr = nla_data(info->attrs[NLBL_MGMT_A_IPV6ADDR]);
		mask = nla_data(info->attrs[NLBL_MGMT_A_IPV6MASK]);

		map = kzalloc(sizeof(*map), GFP_KERNEL);
		if (map == NULL) {
			ret_val = -ENOMEM;
			goto add_failure;
		}
		ipv6_addr_copy(&map->list.addr, addr);
		map->list.addr.s6_addr32[0] &= mask->s6_addr32[0];
		map->list.addr.s6_addr32[1] &= mask->s6_addr32[1];
		map->list.addr.s6_addr32[2] &= mask->s6_addr32[2];
		map->list.addr.s6_addr32[3] &= mask->s6_addr32[3];
		ipv6_addr_copy(&map->list.mask, mask);
		map->list.valid = 1;
		map->type = entry->type;

		ret_val = netlbl_af6list_add(&map->list, &addrmap->list6);
		if (ret_val != 0) {
			kfree(map);
			goto add_failure;
		}

		entry->type = NETLBL_NLTYPE_ADDRSELECT;
		entry->type_def.addrsel = addrmap;
#endif /* IPv6 */
	}

	ret_val = FUNC9(entry, audit_info);
	if (ret_val != 0)
		goto add_failure;

	return 0;

add_failure:
	if (cipsov4)
		FUNC2(cipsov4);
	if (entry)
		FUNC4(entry->domain);
	FUNC4(addrmap);
	FUNC4(entry);
	return ret_val;
}