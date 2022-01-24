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
struct dma_desc {int dummy; } ;
struct TYPE_3__ {scalar_t__* last_super; scalar_t__* last_super_num; int /*<<< orphan*/  mac_reset; int /*<<< orphan*/ * tx_queue; } ;
struct TYPE_4__ {TYPE_1__ wlan; } ;

/* Variables and functions */
 int AR9170_TXQ0 ; 
 int AR9170_TXQ_SPECIAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CARL9170FW_TX_MAC_BUMP ; 
 scalar_t__ CARL9170FW_TX_MAC_DEBUG ; 
 scalar_t__ CARL9170FW_TX_MAC_RESET ; 
 scalar_t__ FUNC1 (struct dma_desc*) ; 
 TYPE_2__ fw ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
	struct dma_desc *desc;
	int i;

	for (i = AR9170_TXQ_SPECIAL; i >= AR9170_TXQ0; i--) {
		if (FUNC3(&fw.wlan.tx_queue[i])) {
			/* Nothing to do here... move along */
			continue;
		}

		/* fetch the current DMA queue position */
		desc = (struct dma_desc *)FUNC2(i);

		/* Stuck frame detection */
		if (FUNC4(FUNC1(desc) == fw.wlan.last_super[i])) {
			fw.wlan.last_super_num[i]++;

			if (FUNC4(fw.wlan.last_super_num[i] >= CARL9170FW_TX_MAC_RESET)) {
				/*
				 * schedule MAC reset (aka OFF/ON => dead)
				 *
				 * This will almost certainly kill
				 * the device for good, but it's the
				 * recommended thing to do...
				 */

				fw.wlan.mac_reset++;
			}

#ifdef CONFIG_CARL9170FW_DEBUG
			if (unlikely(fw.wlan.last_super_num[i] >= CARL9170FW_TX_MAC_DEBUG)) {
				/*
				 * Sigh, the queue is almost certainly
				 * dead. Dump the queue content to the
				 * user, maybe we find out why it got
				 * so stuck.
				 */

				wlan_dump_queue(i);
			}
#endif /* CONFIG_CARL9170FW_DEBUG */

#ifdef CONFIG_CARL9170FW_DMA_QUEUE_BUMP
			if (unlikely(fw.wlan.last_super_num[i] >= CARL9170FW_TX_MAC_BUMP)) {
				/*
				 * Hrrm, bump the queue a bit.
				 * maybe this will get it going again.
				 */

				wlan_dma_bump(i);
				wlan_trigger(BIT(i));
			}
#endif /* CONFIG_CARL9170FW_DMA_QUEUE_BUMP */
		} else {
			/* Nothing stuck */
			fw.wlan.last_super[i] = FUNC1(desc);
			fw.wlan.last_super_num[i] = 0;
		}
	}
}