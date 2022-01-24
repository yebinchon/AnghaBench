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
struct TYPE_3__ {scalar_t__ lvl; int /*<<< orphan*/  cat; } ;
struct TYPE_4__ {int /*<<< orphan*/  secid; TYPE_1__ mls; } ;
struct netlbl_lsm_secattr {int flags; TYPE_2__ attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NETLBL_SECATTR_MLS_CAT ; 
 int NETLBL_SECATTR_MLS_LVL ; 
 int NETLBL_SECATTR_SECID ; 
 int SMK_LABELLEN ; 
 int /*<<< orphan*/  SMK_MAXLEN ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 scalar_t__ smack_cipso_direct ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char* smack_net_ambient ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct netlbl_lsm_secattr *sap, char *sip)
{
	char smack[SMK_LABELLEN];
	char *sp;
	int pcat;

	if ((sap->flags & NETLBL_SECATTR_MLS_LVL) != 0) {
		/*
		 * Looks like a CIPSO packet.
		 * If there are flags but no level netlabel isn't
		 * behaving the way we expect it to.
		 *
		 * Get the categories, if any
		 * Without guidance regarding the smack value
		 * for the packet fall back on the network
		 * ambient value.
		 */
		FUNC2(smack, '\0', SMK_LABELLEN);
		if ((sap->flags & NETLBL_SECATTR_MLS_CAT) != 0)
			for (pcat = -1;;) {
				pcat = FUNC3(
					sap->attr.mls.cat, pcat + 1);
				if (pcat < 0)
					break;
				FUNC4(pcat, smack);
			}
		/*
		 * If it is CIPSO using smack direct mapping
		 * we are already done. WeeHee.
		 */
		if (sap->attr.mls.lvl == smack_cipso_direct) {
			FUNC1(sip, smack, SMK_MAXLEN);
			return;
		}
		/*
		 * Look it up in the supplied table if it is not
		 * a direct mapping.
		 */
		FUNC5(sap->attr.mls.lvl, smack, sip);
		return;
	}
	if ((sap->flags & NETLBL_SECATTR_SECID) != 0) {
		/*
		 * Looks like a fallback, which gives us a secid.
		 */
		sp = FUNC6(sap->attr.secid);
		/*
		 * This has got to be a bug because it is
		 * impossible to specify a fallback without
		 * specifying the label, which will ensure
		 * it has a secid, and the only way to get a
		 * secid is from a fallback.
		 */
		FUNC0(sp == NULL);
		FUNC7(sip, sp, SMK_MAXLEN);
		return;
	}
	/*
	 * Without guidance regarding the smack value
	 * for the packet fall back on the network
	 * ambient value.
	 */
	FUNC7(sip, smack_net_ambient, SMK_MAXLEN);
	return;
}