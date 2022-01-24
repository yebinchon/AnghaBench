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
struct ts_state {int dummy; } ;
struct ts_config {int /*<<< orphan*/  finish; int /*<<< orphan*/  get_next_block; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ts_state*) ; 
 unsigned int UINT_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  skb_ts_finish ; 
 int /*<<< orphan*/  skb_ts_get_next_block ; 
 unsigned int FUNC2 (struct ts_config*,struct ts_state*) ; 

unsigned int FUNC3(struct sk_buff *skb, unsigned int from,
			   unsigned int to, struct ts_config *config,
			   struct ts_state *state)
{
	unsigned int ret;

	config->get_next_block = skb_ts_get_next_block;
	config->finish = skb_ts_finish;

	FUNC1(skb, from, to, FUNC0(state));

	ret = FUNC2(config, state);
	return (ret <= to - from ? ret : UINT_MAX);
}