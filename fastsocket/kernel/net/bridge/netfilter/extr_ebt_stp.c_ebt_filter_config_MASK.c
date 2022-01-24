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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct stp_config_pdu {scalar_t__ flags; int* root; int* sender; int* port; int* msg_age; int* max_age; int* hello_time; int* forward_delay; int /*<<< orphan*/  root_cost; } ;
struct ebt_stp_config_info {scalar_t__ flags; scalar_t__ root_priol; scalar_t__ root_priou; int* root_addr; int* root_addrmsk; scalar_t__ root_costl; scalar_t__ root_costu; scalar_t__ sender_priol; scalar_t__ sender_priou; int* sender_addr; int* sender_addrmsk; scalar_t__ portl; scalar_t__ portu; scalar_t__ msg_agel; scalar_t__ msg_ageu; scalar_t__ max_agel; scalar_t__ max_ageu; scalar_t__ hello_timel; scalar_t__ hello_timeu; scalar_t__ forward_delayl; scalar_t__ forward_delayu; } ;
struct ebt_stp_info {int bitmask; struct ebt_stp_config_info config; } ;

/* Variables and functions */
 int EBT_STP_FLAGS ; 
 int EBT_STP_FWDD ; 
 int EBT_STP_HELLOTIME ; 
 int EBT_STP_MAXAGE ; 
 int EBT_STP_MSGAGE ; 
 int EBT_STP_PORT ; 
 int EBT_STP_ROOTADDR ; 
 int EBT_STP_ROOTCOST ; 
 int EBT_STP_ROOTPRIO ; 
 int EBT_STP_SENDERADDR ; 
 int EBT_STP_SENDERPRIO ; 
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(const struct ebt_stp_info *info,
   const struct stp_config_pdu *stpc)
{
	const struct ebt_stp_config_info *c;
	uint16_t v16;
	uint32_t v32;
	int verdict, i;

	c = &info->config;
	if ((info->bitmask & EBT_STP_FLAGS) &&
	    FUNC0(c->flags != stpc->flags, EBT_STP_FLAGS))
		return false;
	if (info->bitmask & EBT_STP_ROOTPRIO) {
		v16 = FUNC1(stpc->root);
		if (FUNC0(v16 < c->root_priol ||
		    v16 > c->root_priou, EBT_STP_ROOTPRIO))
			return false;
	}
	if (info->bitmask & EBT_STP_ROOTADDR) {
		verdict = 0;
		for (i = 0; i < 6; i++)
			verdict |= (stpc->root[2+i] ^ c->root_addr[i]) &
				   c->root_addrmsk[i];
		if (FUNC0(verdict != 0, EBT_STP_ROOTADDR))
			return false;
	}
	if (info->bitmask & EBT_STP_ROOTCOST) {
		v32 = FUNC2(stpc->root_cost);
		if (FUNC0(v32 < c->root_costl ||
		    v32 > c->root_costu, EBT_STP_ROOTCOST))
			return false;
	}
	if (info->bitmask & EBT_STP_SENDERPRIO) {
		v16 = FUNC1(stpc->sender);
		if (FUNC0(v16 < c->sender_priol ||
		    v16 > c->sender_priou, EBT_STP_SENDERPRIO))
			return false;
	}
	if (info->bitmask & EBT_STP_SENDERADDR) {
		verdict = 0;
		for (i = 0; i < 6; i++)
			verdict |= (stpc->sender[2+i] ^ c->sender_addr[i]) &
				   c->sender_addrmsk[i];
		if (FUNC0(verdict != 0, EBT_STP_SENDERADDR))
			return false;
	}
	if (info->bitmask & EBT_STP_PORT) {
		v16 = FUNC1(stpc->port);
		if (FUNC0(v16 < c->portl ||
		    v16 > c->portu, EBT_STP_PORT))
			return false;
	}
	if (info->bitmask & EBT_STP_MSGAGE) {
		v16 = FUNC1(stpc->msg_age);
		if (FUNC0(v16 < c->msg_agel ||
		    v16 > c->msg_ageu, EBT_STP_MSGAGE))
			return false;
	}
	if (info->bitmask & EBT_STP_MAXAGE) {
		v16 = FUNC1(stpc->max_age);
		if (FUNC0(v16 < c->max_agel ||
		    v16 > c->max_ageu, EBT_STP_MAXAGE))
			return false;
	}
	if (info->bitmask & EBT_STP_HELLOTIME) {
		v16 = FUNC1(stpc->hello_time);
		if (FUNC0(v16 < c->hello_timel ||
		    v16 > c->hello_timeu, EBT_STP_HELLOTIME))
			return false;
	}
	if (info->bitmask & EBT_STP_FWDD) {
		v16 = FUNC1(stpc->forward_delay);
		if (FUNC0(v16 < c->forward_delayl ||
		    v16 > c->forward_delayu, EBT_STP_FWDD))
			return false;
	}
	return true;
}