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
typedef  int u16 ;
struct ieee80211_hdr_4addr {int* addr4; int* addr2; int* addr1; int /*<<< orphan*/  seq_ctl; int /*<<< orphan*/  frame_ctl; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int AES_BLOCK_LEN ; 
 int CCMP_PN_LEN ; 
 int ETH_ALEN ; 
 int IEEE80211_FCTL_FROMDS ; 
 int IEEE80211_FCTL_TODS ; 
 scalar_t__ IEEE80211_FTYPE_DATA ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_tfm*,int*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int) ; 

__attribute__((used)) static void FUNC7(struct crypto_tfm *tfm,
			     struct ieee80211_hdr_4addr *hdr,
			     u8 *pn, size_t dlen, u8 *b0, u8 *auth,
			     u8 *s0)
{
	u8 *pos, qc = 0;
	size_t aad_len;
	u16 fc;
	int a4_included, qc_included;
	u8 aad[2 * AES_BLOCK_LEN];

	fc = FUNC3(hdr->frame_ctl);
	a4_included = ((fc & (IEEE80211_FCTL_TODS | IEEE80211_FCTL_FROMDS)) ==
		       (IEEE80211_FCTL_TODS | IEEE80211_FCTL_FROMDS));
	/*
	qc_included = ((WLAN_FC_GET_TYPE(fc) == IEEE80211_FTYPE_DATA) &&
		       (WLAN_FC_GET_STYPE(fc) & 0x08));
        */
	// fixed by David :2006.9.6
	qc_included = ((FUNC1(fc) == IEEE80211_FTYPE_DATA) &&
		       (FUNC0(fc) & 0x80));
	aad_len = 22;
	if (a4_included)
		aad_len += 6;
	if (qc_included) {
		pos = (u8 *) &hdr->addr4;
		if (a4_included)
			pos += 6;
		qc = *pos & 0x0f;
		aad_len += 2;
	}
	/* CCM Initial Block:
	 * Flag (Include authentication header, M=3 (8-octet MIC),
	 *       L=1 (2-octet Dlen))
	 * Nonce: 0x00 | A2 | PN
	 * Dlen */
	b0[0] = 0x59;
	b0[1] = qc;
	FUNC4(b0 + 2, hdr->addr2, ETH_ALEN);
	FUNC4(b0 + 8, pn, CCMP_PN_LEN);
	b0[14] = (dlen >> 8) & 0xff;
	b0[15] = dlen & 0xff;

	/* AAD:
	 * FC with bits 4..6 and 11..13 masked to zero; 14 is always one
	 * A1 | A2 | A3
	 * SC with bits 4..15 (seq#) masked to zero
	 * A4 (if present)
	 * QC (if present)
	 */
	pos = (u8 *) hdr;
	aad[0] = 0; /* aad_len >> 8 */
	aad[1] = aad_len & 0xff;
	aad[2] = pos[0] & 0x8f;
	aad[3] = pos[1] & 0xc7;
	FUNC4(aad + 4, hdr->addr1, 3 * ETH_ALEN);
	pos = (u8 *) &hdr->seq_ctl;
	aad[22] = pos[0] & 0x0f;
	aad[23] = 0; /* all bits masked */
	FUNC5(aad + 24, 0, 8);
	if (a4_included)
		FUNC4(aad + 24, hdr->addr4, ETH_ALEN);
	if (qc_included) {
		aad[a4_included ? 30 : 24] = qc;
		/* rest of QC masked */
	}

	/* Start with the first block and AAD */
	FUNC2(tfm, b0, auth);
	FUNC6(auth, aad, AES_BLOCK_LEN);
	FUNC2(tfm, auth, auth);
	FUNC6(auth, &aad[AES_BLOCK_LEN], AES_BLOCK_LEN);
	FUNC2(tfm, auth, auth);
	b0[0] &= 0x07;
	b0[14] = b0[15] = 0;
	FUNC2(tfm, b0, s0);
}