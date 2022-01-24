#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_3__* cat; } ;
struct TYPE_6__ {TYPE_1__ mls; } ;
struct netlbl_lsm_secattr {TYPE_2__ attr; int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {scalar_t__ startbit; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NETLBL_SECATTR_MLS_CAT ; 
 int SMK_LABELLEN ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(char *catset, struct netlbl_lsm_secattr *sap)
{
	unsigned char *cp;
	unsigned char m;
	int cat;
	int rc;
	int byte;

	if (!catset)
		return;

	sap->flags |= NETLBL_SECATTR_MLS_CAT;
	sap->attr.mls.cat = FUNC0(GFP_ATOMIC);
	sap->attr.mls.cat->startbit = 0;

	for (cat = 1, cp = catset, byte = 0; byte < SMK_LABELLEN; cp++, byte++)
		for (m = 0x80; m != 0; m >>= 1, cat++) {
			if ((m & *cp) == 0)
				continue;
			rc = FUNC1(sap->attr.mls.cat,
							  cat, GFP_ATOMIC);
		}
}