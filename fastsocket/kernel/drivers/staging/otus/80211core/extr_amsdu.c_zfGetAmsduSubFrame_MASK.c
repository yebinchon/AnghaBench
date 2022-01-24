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
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  scalar_t__ u16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

zbuf_t *FUNC6(zdev_t *dev, zbuf_t *buf, u16_t *offset)
{
	u16_t subframeLen;
	u16_t amsduLen = FUNC3(dev, buf);
	zbuf_t *newBuf;

	FUNC0(dev, buf, amsduLen);

	/* Verify A-MSDU length */
	if (amsduLen < (*offset + 14))
		return NULL;

	/* Locate A-MSDU subframe by offset and verify subframe length */
	subframeLen = (FUNC5(dev, buf, *offset + 12) << 8) +
		FUNC5(dev, buf, *offset + 13);

	if (subframeLen == 0)
		return NULL;

	/* Verify A-MSDU subframe length */
	if ((*offset+14+subframeLen) <= amsduLen) {
		/* Allocate a new buffer */
		newBuf = FUNC2(dev, 24+2+subframeLen);
		if (newBuf != NULL) {
			#ifdef ZM_ENABLE_NATIVE_WIFI
			/* Copy and convert subframe to wlan frame format
			* SHALL NOT INCLUDE QOS and AMSDU header.
			* Ray 20070807 For Vista
			*/
			zfRxBufferCopy(dev, newBuf, buf, 0, 0, 24);
			zfRxBufferCopy(dev, newBuf, buf, 24, *offset+14,
					subframeLen);
			zfwBufSetSize(dev, newBuf, 24+subframeLen);
			#else
			/* Copy subframe to new buffer */
			FUNC1(dev, newBuf, buf, 0, *offset,
					14+subframeLen);
			FUNC4(dev, newBuf, 14+subframeLen);
			#endif
			/* Update offset */
			*offset += (((14+subframeLen)+3) & 0xfffc);

			/* Return buffer pointer */
			return newBuf;
		}
	}
	return NULL;
}