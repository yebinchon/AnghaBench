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
typedef  int /*<<< orphan*/  u32 ;
struct netlbl_lsm_secattr {int /*<<< orphan*/  type; } ;
struct cipso_v4_doi {int dummy; } ;

/* Variables and functions */
#define  CIPSO_V4_TAG_ENUM 131 
#define  CIPSO_V4_TAG_LOCAL 130 
#define  CIPSO_V4_TAG_RANGE 129 
#define  CIPSO_V4_TAG_RBITMAP 128 
 int ENOMSG ; 
 int /*<<< orphan*/  NETLBL_NLTYPE_CIPSOV4 ; 
 scalar_t__ FUNC0 (unsigned char const*,unsigned char const,struct netlbl_lsm_secattr*) ; 
 struct cipso_v4_doi* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cipso_v4_doi*,unsigned char const*,struct netlbl_lsm_secattr*) ; 
 int FUNC3 (struct cipso_v4_doi*,unsigned char const*,struct netlbl_lsm_secattr*) ; 
 int FUNC4 (struct cipso_v4_doi*,unsigned char const*,struct netlbl_lsm_secattr*) ; 
 int FUNC5 (struct cipso_v4_doi*,unsigned char const*,struct netlbl_lsm_secattr*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(const unsigned char *cipso,
			    struct netlbl_lsm_secattr *secattr)
{
	int ret_val = -ENOMSG;
	u32 doi;
	struct cipso_v4_doi *doi_def;

	if (FUNC0(cipso, cipso[1], secattr) == 0)
		return 0;

	doi = FUNC6(&cipso[2]);
	FUNC7();
	doi_def = FUNC1(doi);
	if (doi_def == NULL)
		goto getattr_return;
	/* XXX - This code assumes only one tag per CIPSO option which isn't
	 * really a good assumption to make but since we only support the MAC
	 * tags right now it is a safe assumption. */
	switch (cipso[6]) {
	case CIPSO_V4_TAG_RBITMAP:
		ret_val = FUNC4(doi_def, &cipso[6], secattr);
		break;
	case CIPSO_V4_TAG_ENUM:
		ret_val = FUNC2(doi_def, &cipso[6], secattr);
		break;
	case CIPSO_V4_TAG_RANGE:
		ret_val = FUNC5(doi_def, &cipso[6], secattr);
		break;
	case CIPSO_V4_TAG_LOCAL:
		ret_val = FUNC3(doi_def, &cipso[6], secattr);
		break;
	}
	if (ret_val == 0)
		secattr->type = NETLBL_NLTYPE_CIPSOV4;

getattr_return:
	FUNC8();
	return ret_val;
}