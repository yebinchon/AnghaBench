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
typedef  int uint8_t ;
struct xt_match_param {struct ebt_stp_info* matchinfo; } ;
struct stp_header {scalar_t__ type; } ;
struct stp_config_pdu {scalar_t__ type; } ;
struct sk_buff {int dummy; } ;
struct ebt_stp_info {int bitmask; scalar_t__ type; } ;
typedef  int /*<<< orphan*/  header ;
typedef  int /*<<< orphan*/  _stph ;
typedef  int /*<<< orphan*/  _stpc ;

/* Variables and functions */
 scalar_t__ BPDU_TYPE_CONFIG ; 
 int EBT_STP_CONFIG_MASK ; 
 int EBT_STP_TYPE ; 
 scalar_t__ FUNC0 (int,int) ; 
 int FUNC1 (struct ebt_stp_info const*,struct stp_header const*) ; 
 scalar_t__ FUNC2 (struct stp_header const*,int const*,int) ; 
 struct stp_header* FUNC3 (struct sk_buff const*,int,int,struct stp_header*) ; 

__attribute__((used)) static bool
FUNC4(const struct sk_buff *skb, const struct xt_match_param *par)
{
	const struct ebt_stp_info *info = par->matchinfo;
	const struct stp_header *sp;
	struct stp_header _stph;
	const uint8_t header[6] = {0x42, 0x42, 0x03, 0x00, 0x00, 0x00};

	sp = FUNC3(skb, 0, sizeof(_stph), &_stph);
	if (sp == NULL)
		return false;

	/* The stp code only considers these */
	if (FUNC2(sp, header, sizeof(header)))
		return false;

	if (info->bitmask & EBT_STP_TYPE
	    && FUNC0(info->type != sp->type, EBT_STP_TYPE))
		return false;

	if (sp->type == BPDU_TYPE_CONFIG &&
	    info->bitmask & EBT_STP_CONFIG_MASK) {
		const struct stp_config_pdu *st;
		struct stp_config_pdu _stpc;

		st = FUNC3(skb, sizeof(_stph),
					sizeof(_stpc), &_stpc);
		if (st == NULL)
			return false;
		return FUNC1(info, st);
	}
	return true;
}