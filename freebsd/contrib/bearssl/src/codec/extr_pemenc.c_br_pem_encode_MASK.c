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
typedef  int uint32_t ;

/* Variables and functions */
 unsigned int BR_PEM_CRLF ; 
 unsigned int BR_PEM_LINE64 ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,void const*,size_t) ; 
 size_t FUNC3 (char const*) ; 

size_t
FUNC4(void *dest, const void *data, size_t len,
	const char *banner, unsigned flags)
{
	size_t dlen, banner_len, lines;
	char *d;
	unsigned char *buf;
	size_t u;
	int off, lim;

	banner_len = FUNC3(banner);
	/* FIXME: try to avoid divisions here, as they may pull
	   an extra libc function. */
	if ((flags & BR_PEM_LINE64) != 0) {
		lines = (len + 47) / 48;
	} else {
		lines = (len + 56) / 57;
	}
	dlen = (banner_len << 1) + 30 + (((len + 2) / 3) << 2)
		+ lines + 2;
	if ((flags & BR_PEM_CRLF) != 0) {
		dlen += lines + 2;
	}

	if (dest == NULL) {
		return dlen;
	}

	d = dest;

	/*
	 * We always move the source data to the end of output buffer;
	 * the encoding process never "catches up" except at the very
	 * end. This also handles all conditions of partial or total
	 * overlap.
	 */
	buf = (unsigned char *)d + dlen - len;
	FUNC2(buf, data, len);

	FUNC1(d, "-----BEGIN ", 11);
	d += 11;
	FUNC1(d, banner, banner_len);
	d += banner_len;
	FUNC1(d, "-----", 5);
	d += 5;
	if ((flags & BR_PEM_CRLF) != 0) {
		*d ++ = 0x0D;
	}
	*d ++ = 0x0A;

	off = 0;
	lim = (flags & BR_PEM_LINE64) != 0 ? 16 : 19;
	for (u = 0; (u + 2) < len; u += 3) {
		uint32_t w;

		w = ((uint32_t)buf[u] << 16)
			| ((uint32_t)buf[u + 1] << 8)
			| (uint32_t)buf[u + 2];
		*d ++ = FUNC0(w >> 18);
		*d ++ = FUNC0((w >> 12) & 0x3F);
		*d ++ = FUNC0((w >> 6) & 0x3F);
		*d ++ = FUNC0(w & 0x3F);
		if (++ off == lim) {
			off = 0;
			if ((flags & BR_PEM_CRLF) != 0) {
				*d ++ = 0x0D;
			}
			*d ++ = 0x0A;
		}
	}
	if (u < len) {
		uint32_t w;

		w = (uint32_t)buf[u] << 16;
		if (u + 1 < len) {
			w |= (uint32_t)buf[u + 1] << 8;
		}
		*d ++ = FUNC0(w >> 18);
		*d ++ = FUNC0((w >> 12) & 0x3F);
		if (u + 1 < len) {
			*d ++ = FUNC0((w >> 6) & 0x3F);
		} else {
			*d ++ = 0x3D;
		}
		*d ++ = 0x3D;
		off ++;
	}
	if (off != 0) {
		if ((flags & BR_PEM_CRLF) != 0) {
			*d ++ = 0x0D;
		}
		*d ++ = 0x0A;
	}

	FUNC1(d, "-----END ", 9);
	d += 9;
	FUNC1(d, banner, banner_len);
	d += banner_len;
	FUNC1(d, "-----", 5);
	d += 5;
	if ((flags & BR_PEM_CRLF) != 0) {
		*d ++ = 0x0D;
	}
	*d ++ = 0x0A;

	/* Final zero, not counted in returned length. */
	*d ++ = 0x00;

	return dlen;
}