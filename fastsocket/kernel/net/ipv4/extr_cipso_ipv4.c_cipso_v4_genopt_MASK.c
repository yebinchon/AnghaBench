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
typedef  scalar_t__ u32 ;
struct netlbl_lsm_secattr {int dummy; } ;
struct cipso_v4_doi {int* tags; } ;

/* Variables and functions */
 scalar_t__ CIPSO_V4_HDR_LEN ; 
#define  CIPSO_V4_TAG_ENUM 131 
 int CIPSO_V4_TAG_INVALID ; 
#define  CIPSO_V4_TAG_LOCAL 130 
 scalar_t__ CIPSO_V4_TAG_MAXCNT ; 
#define  CIPSO_V4_TAG_RANGE 129 
#define  CIPSO_V4_TAG_RBITMAP 128 
 int ENOSPC ; 
 int EPERM ; 
 int FUNC0 (struct cipso_v4_doi const*,struct netlbl_lsm_secattr const*,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct cipso_v4_doi const*,unsigned char*,int) ; 
 int FUNC2 (struct cipso_v4_doi const*,struct netlbl_lsm_secattr const*,unsigned char*,scalar_t__) ; 
 int FUNC3 (struct cipso_v4_doi const*,struct netlbl_lsm_secattr const*,unsigned char*,scalar_t__) ; 
 int FUNC4 (struct cipso_v4_doi const*,struct netlbl_lsm_secattr const*,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(unsigned char *buf, u32 buf_len,
			   const struct cipso_v4_doi *doi_def,
			   const struct netlbl_lsm_secattr *secattr)
{
	int ret_val;
	u32 iter;

	if (buf_len <= CIPSO_V4_HDR_LEN)
		return -ENOSPC;

	/* XXX - This code assumes only one tag per CIPSO option which isn't
	 * really a good assumption to make but since we only support the MAC
	 * tags right now it is a safe assumption. */
	iter = 0;
	do {
		FUNC5(buf, 0, buf_len);
		switch (doi_def->tags[iter]) {
		case CIPSO_V4_TAG_RBITMAP:
			ret_val = FUNC3(doi_def,
						   secattr,
						   &buf[CIPSO_V4_HDR_LEN],
						   buf_len - CIPSO_V4_HDR_LEN);
			break;
		case CIPSO_V4_TAG_ENUM:
			ret_val = FUNC0(doi_def,
						   secattr,
						   &buf[CIPSO_V4_HDR_LEN],
						   buf_len - CIPSO_V4_HDR_LEN);
			break;
		case CIPSO_V4_TAG_RANGE:
			ret_val = FUNC4(doi_def,
						   secattr,
						   &buf[CIPSO_V4_HDR_LEN],
						   buf_len - CIPSO_V4_HDR_LEN);
			break;
		case CIPSO_V4_TAG_LOCAL:
			ret_val = FUNC2(doi_def,
						   secattr,
						   &buf[CIPSO_V4_HDR_LEN],
						   buf_len - CIPSO_V4_HDR_LEN);
			break;
		default:
			return -EPERM;
		}

		iter++;
	} while (ret_val < 0 &&
		 iter < CIPSO_V4_TAG_MAXCNT &&
		 doi_def->tags[iter] != CIPSO_V4_TAG_INVALID);
	if (ret_val < 0)
		return ret_val;
	FUNC1(doi_def, buf, ret_val);
	return CIPSO_V4_HDR_LEN + ret_val;
}