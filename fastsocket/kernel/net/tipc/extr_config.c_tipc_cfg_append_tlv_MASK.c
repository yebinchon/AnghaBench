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
struct tlv_desc {void* tlv_len; void* tlv_type; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tlv_desc*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct sk_buff*) ; 

int FUNC9(struct sk_buff *buf, int tlv_type,
			void *tlv_data, int tlv_data_size)
{
	struct tlv_desc *tlv = (struct tlv_desc *)FUNC7(buf);
	int new_tlv_space = FUNC2(tlv_data_size);

	if (FUNC8(buf) < new_tlv_space) {
		FUNC3("tipc_cfg_append_tlv unable to append TLV\n");
		return 0;
	}
	FUNC6(buf, new_tlv_space);
	tlv->tlv_type = FUNC4(tlv_type);
	tlv->tlv_len  = FUNC4(FUNC1(tlv_data_size));
	if (tlv_data_size && tlv_data)
		FUNC5(FUNC0(tlv), tlv_data, tlv_data_size);
	return 1;
}