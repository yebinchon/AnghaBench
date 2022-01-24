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
typedef  int u8 ;
struct ieee80211_device {int* wpa_ie; size_t wpa_ie_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t MAX_WPA_IE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,...) ; 

int FUNC4(struct ieee80211_device *ieee, u8 *ie, size_t len)
{
	u8 *buf = NULL;

	if (len>MAX_WPA_IE_LEN || (len && ie == NULL))
	{
		FUNC3("return error out, len:%zu\n", len);
	return -EINVAL;
	}

	if (len)
	{
		if (len != ie[1]+2){
			FUNC3("len:%zu, ie:%d\n", len, ie[1]);
			return -EINVAL;
		}
		buf = FUNC1(len, GFP_KERNEL);
		if (buf == NULL)
			return -ENOMEM;
		FUNC2(buf, ie, len);
		FUNC0(ieee->wpa_ie);
		ieee->wpa_ie = buf;
		ieee->wpa_ie_len = len;
	}
	else{
		if (ieee->wpa_ie)
		FUNC0(ieee->wpa_ie);
		ieee->wpa_ie = NULL;
		ieee->wpa_ie_len = 0;
	}
//	printk("<=====out %s()\n", __func__);

	return 0;

}