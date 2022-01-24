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
typedef  int u32 ;
struct netlbl_domaddr6_map {int type; } ;
struct TYPE_3__ {struct cipso_v4_doi* cipsov4; } ;
struct netlbl_domaddr4_map {int type; TYPE_1__ type_def; } ;
struct TYPE_4__ {struct cipso_v4_doi* cipsov4; } ;
struct netlbl_dom_map {char* domain; int type; TYPE_2__ type_def; } ;
struct netlbl_audit {int dummy; } ;
struct netlbl_af6list {int /*<<< orphan*/  mask; int /*<<< orphan*/  addr; } ;
struct netlbl_af4list {int /*<<< orphan*/  mask; int /*<<< orphan*/  addr; } ;
struct cipso_v4_doi {int doi; } ;
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_MAC_MAP_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  NETLBL_NLTYPE_CIPSOV4 129 
#define  NETLBL_NLTYPE_UNLABELED 128 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct audit_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct audit_buffer* FUNC5 (int /*<<< orphan*/ ,struct netlbl_audit*) ; 
 struct netlbl_domaddr4_map* FUNC6 (struct netlbl_af4list*) ; 
 struct netlbl_domaddr6_map* FUNC7 (struct netlbl_af6list*) ; 

__attribute__((used)) static void FUNC8(struct netlbl_dom_map *entry,
				    struct netlbl_af4list *addr4,
				    struct netlbl_af6list *addr6,
				    int result,
				    struct netlbl_audit *audit_info)
{
	struct audit_buffer *audit_buf;
	struct cipso_v4_doi *cipsov4 = NULL;
	u32 type;

	audit_buf = FUNC5(AUDIT_MAC_MAP_ADD, audit_info);
	if (audit_buf != NULL) {
		FUNC2(audit_buf, " nlbl_domain=%s",
				 entry->domain ? entry->domain : "(default)");
		if (addr4 != NULL) {
			struct netlbl_domaddr4_map *map4;
			map4 = FUNC6(addr4);
			type = map4->type;
			cipsov4 = map4->type_def.cipsov4;
			FUNC3(audit_buf, 0, NULL,
						  addr4->addr, addr4->mask);
#if defined(CONFIG_IPV6) || defined(CONFIG_IPV6_MODULE)
		} else if (addr6 != NULL) {
			struct netlbl_domaddr6_map *map6;
			map6 = netlbl_domhsh_addr6_entry(addr6);
			type = map6->type;
			netlbl_af6list_audit_addr(audit_buf, 0, NULL,
						  &addr6->addr, &addr6->mask);
#endif /* IPv6 */
		} else {
			type = entry->type;
			cipsov4 = entry->type_def.cipsov4;
		}
		switch (type) {
		case NETLBL_NLTYPE_UNLABELED:
			FUNC2(audit_buf, " nlbl_protocol=unlbl");
			break;
		case NETLBL_NLTYPE_CIPSOV4:
			FUNC0(cipsov4 == NULL);
			FUNC2(audit_buf,
					 " nlbl_protocol=cipsov4 cipso_doi=%u",
					 cipsov4->doi);
			break;
		}
		FUNC2(audit_buf, " res=%u", result == 0 ? 1 : 0);
		FUNC1(audit_buf);
	}
}