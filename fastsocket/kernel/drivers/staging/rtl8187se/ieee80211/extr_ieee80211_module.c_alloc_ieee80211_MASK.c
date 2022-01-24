#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_2__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct ieee80211_device {int open_wep; int host_encrypt; int host_decrypt; int ieee802_1x; int* last_rxseq_num; int* last_rxfrag_num; scalar_t__* last_packet_time; int /*<<< orphan*/ * ibss_mac_hash; scalar_t__ raw_tx; scalar_t__ privacy_invoked; scalar_t__ drop_unencrypted; scalar_t__ tkip_countermeasures; scalar_t__ wpa_enabled; scalar_t__ wpax_type_set; int /*<<< orphan*/  wpax_suitlist_lock; int /*<<< orphan*/  lock; TYPE_1__ crypt_deinit_timer; int /*<<< orphan*/  crypt_deinit_list; int /*<<< orphan*/  scan_age; int /*<<< orphan*/  fts; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_FTS ; 
 int /*<<< orphan*/  DEFAULT_MAX_SCAN_AGE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int IEEE_IBSS_MAC_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  ieee80211_crypt_deinit_handler ; 
 int FUNC6 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 struct ieee80211_device* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

struct net_device *FUNC14(int sizeof_priv)
{
	struct ieee80211_device *ieee;
	struct net_device *dev;
	int i,err;

	FUNC0("Initializing...\n");

	dev = FUNC3(sizeof(struct ieee80211_device) + sizeof_priv);
	if (!dev) {
		FUNC1("Unable to network device.\n");
		goto failed;
	}
	ieee = FUNC12(dev);

	ieee->dev = dev;

	err = FUNC6(ieee);
	if (err) {
		FUNC1("Unable to allocate beacon storage: %d\n",
				err);
		goto failed;
	}
	FUNC7(ieee);

	/* Default fragmentation threshold is maximum payload size */
	ieee->fts = DEFAULT_FTS;
	ieee->scan_age = DEFAULT_MAX_SCAN_AGE;
	ieee->open_wep = 1;

	/* Default to enabling full open WEP with host based encrypt/decrypt */
	ieee->host_encrypt = 1;
	ieee->host_decrypt = 1;
	ieee->ieee802_1x = 1; /* Default to supporting 802.1x */

	FUNC2(&ieee->crypt_deinit_list);
	FUNC11(&ieee->crypt_deinit_timer);
	ieee->crypt_deinit_timer.data = (unsigned long)ieee;
	ieee->crypt_deinit_timer.function = ieee80211_crypt_deinit_handler;

	FUNC13(&ieee->lock);
	FUNC13(&ieee->wpax_suitlist_lock);

	ieee->wpax_type_set = 0;
 	ieee->wpa_enabled = 0;
 	ieee->tkip_countermeasures = 0;
 	ieee->drop_unencrypted = 0;
 	ieee->privacy_invoked = 0;
 	ieee->ieee802_1x = 1;
	ieee->raw_tx = 0;

	FUNC8(ieee);

	for (i = 0; i < IEEE_IBSS_MAC_HASH_SIZE; i++)
		FUNC2(&ieee->ibss_mac_hash[i]);

	for (i = 0; i < 17; i++) {
	  ieee->last_rxseq_num[i] = -1;
	  ieee->last_rxfrag_num[i] = -1;
	  ieee->last_packet_time[i] = 0;
	}
//These function were added to load crypte module autoly
	FUNC9();
	FUNC10();
	FUNC5();
	return dev;

 failed:
	if (dev)
		FUNC4(dev);
	return NULL;
}