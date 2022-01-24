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
typedef  int u32 ;
struct michael_mic_ctx {int /*<<< orphan*/  r; int /*<<< orphan*/  l; } ;
struct ieee80211_hdr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (struct michael_mic_ctx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct michael_mic_ctx*,int const*,struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 

void FUNC4(const u8 *key, struct ieee80211_hdr *hdr,
		 const u8 *data, size_t data_len, u8 *mic)
{
	u32 val;
	size_t block, blocks, left;
	struct michael_mic_ctx mctx;

	FUNC2(&mctx, key, hdr);

	/* Real data */
	blocks = data_len / 4;
	left = data_len % 4;

	for (block = 0; block < blocks; block++)
		FUNC1(&mctx, FUNC0(&data[block * 4]));

	/* Partial block of 0..3 bytes and padding: 0x5a + 4..7 zeros to make
	 * total length a multiple of 4. */
	val = 0x5a;
	while (left > 0) {
		val <<= 8;
		left--;
		val |= data[blocks * 4 + left];
	}

	FUNC1(&mctx, val);
	FUNC1(&mctx, 0);

	FUNC3(mctx.l, mic);
	FUNC3(mctx.r, mic + 4);
}