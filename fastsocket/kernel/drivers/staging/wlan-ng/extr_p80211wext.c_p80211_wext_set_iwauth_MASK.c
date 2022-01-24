#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  hostwep; } ;
typedef  TYPE_1__ wlandevice_t ;
struct iw_param {int flags; int value; } ;
union iwreq_data {struct iw_param param; } ;
struct net_device {TYPE_1__* ml_priv; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIDmib_dot11smt_dot11PrivacyTable_dot11ExcludeUnencrypted ; 
 int /*<<< orphan*/  DIDmib_dot11smt_dot11PrivacyTable_dot11PrivacyInvoked ; 
 int EINVAL ; 
 int /*<<< orphan*/  HOSTWEP_SHAREDKEY ; 
#define  IW_AUTH_80211_AUTH_ALG 130 
 int IW_AUTH_ALG_OPEN_SYSTEM ; 
 int IW_AUTH_ALG_SHARED_KEY ; 
#define  IW_AUTH_DROP_UNENCRYPTED 129 
 int IW_AUTH_INDEX ; 
#define  IW_AUTH_PRIVACY_INVOKED 128 
 int /*<<< orphan*/  P80211ENUM_truth_false ; 
 int /*<<< orphan*/  P80211ENUM_truth_true ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev,
				  struct iw_request_info *info,
				  union iwreq_data *wrqu, char *extra)
{
	wlandevice_t *wlandev = dev->ml_priv;
	struct iw_param *param = &wrqu->param;
	int result = 0;

	FUNC1("set_iwauth flags[%d]\n", (int)param->flags & IW_AUTH_INDEX);

	switch (param->flags & IW_AUTH_INDEX) {
	case IW_AUTH_DROP_UNENCRYPTED:
		FUNC1("drop_unencrypted %d\n", param->value);
		if (param->value)
			result =
			    FUNC0(wlandev,
						 DIDmib_dot11smt_dot11PrivacyTable_dot11ExcludeUnencrypted,
						 P80211ENUM_truth_true);
		else
			result =
			    FUNC0(wlandev,
						 DIDmib_dot11smt_dot11PrivacyTable_dot11ExcludeUnencrypted,
						 P80211ENUM_truth_false);
		break;

	case IW_AUTH_PRIVACY_INVOKED:
		FUNC1("privacy invoked %d\n", param->value);
		if (param->value)
			result =
			    FUNC0(wlandev,
						 DIDmib_dot11smt_dot11PrivacyTable_dot11PrivacyInvoked,
						 P80211ENUM_truth_true);
		else
			result =
			    FUNC0(wlandev,
						 DIDmib_dot11smt_dot11PrivacyTable_dot11PrivacyInvoked,
						 P80211ENUM_truth_false);

		break;

	case IW_AUTH_80211_AUTH_ALG:
		if (param->value & IW_AUTH_ALG_OPEN_SYSTEM) {
			FUNC1("set open_system\n");
			wlandev->hostwep &= ~HOSTWEP_SHAREDKEY;
		} else if (param->value & IW_AUTH_ALG_SHARED_KEY) {
			FUNC1("set shared key\n");
			wlandev->hostwep |= HOSTWEP_SHAREDKEY;
		} else {
			/* don't know what to do know  */
			FUNC1("unknown AUTH_ALG (%d)\n", param->value);
			result = -EINVAL;
		}
		break;

	default:
		break;
	}

	return result;
}