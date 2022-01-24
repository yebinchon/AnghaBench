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
struct carlfw {int dummy; } ;
struct carl9170fw_otus_desc {int fw_address; int tx_frag_len; int tx_descs; int cmd_bufs; int rx_max_frame_len; int vif_num; int api_ver; int /*<<< orphan*/  feature_set; int /*<<< orphan*/  bcn_len; int /*<<< orphan*/  bcn_addr; } ;
struct carl9170fw_desc_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ __CARL9170FW_FEATURE_NUM ; 
 int /*<<< orphan*/  FUNC2 (struct carl9170fw_desc_head const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct carlfw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  known_otus_features_v1 ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC6(const struct carl9170fw_desc_head *head,
			   struct carlfw *fw)
{
	const struct carl9170fw_otus_desc *otus = (const void *) head;

	FUNC1(FUNC0(known_otus_features_v1) != __CARL9170FW_FEATURE_NUM);

	FUNC3(stdout, "\tFirmware upload pointer: 0x%x\n",
		otus->fw_address);
	FUNC3(stdout, "\tBeacon Address: %x, (reserved:%d Bytes)\n",
		FUNC5(otus->bcn_addr), FUNC4(otus->bcn_len));
	FUNC3(stdout, "\tTX DMA chunk size:%d Bytes, TX DMA chunks:%d\n",
		otus->tx_frag_len, otus->tx_descs);
	FUNC3(stdout, "\t=> %d Bytes are reserved for the TX queues\n",
		otus->tx_frag_len * otus->tx_descs);
	FUNC3(stdout, "\tCommand response buffers:%d\n", otus->cmd_bufs);
	FUNC3(stdout, "\tMax. RX stream block size:%d Bytes\n",
		otus->rx_max_frame_len);
	FUNC3(stdout, "\tSupported Firmware Interfaces: %d\n", otus->vif_num);
	FUNC3(stdout, "\tFirmware API Version: %d\n", otus->api_ver);
	FUNC3(stdout, "\tSupported Features: (raw:%.08x)\n",
		FUNC5(otus->feature_set));

	FUNC2(head, otus->feature_set, known_otus_features_v1,
			   FUNC0(known_otus_features_v1), fw);
}