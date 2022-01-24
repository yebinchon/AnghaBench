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
struct nls_table {int dummy; } ;
typedef  scalar_t__ __u16 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int NLS_MAX_CHARSET_SIZE ; 
 int FUNC0 (char*,scalar_t__,struct nls_table const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (struct nls_table const*) ; 

int
FUNC3(char *to, const __le16 *from, int tolen, int fromlen,
		 const struct nls_table *codepage, bool mapchar)
{
	int i, charlen, safelen;
	int outlen = 0;
	int nullsize = FUNC2(codepage);
	int fromwords = fromlen / 2;
	char tmp[NLS_MAX_CHARSET_SIZE];
	__u16 ftmp;

	/*
	 * because the chars can be of varying widths, we need to take care
	 * not to overflow the destination buffer when we get close to the
	 * end of it. Until we get to this offset, we don't need to check
	 * for overflow however.
	 */
	safelen = tolen - (NLS_MAX_CHARSET_SIZE + nullsize);

	for (i = 0; i < fromwords; i++) {
		ftmp = FUNC1(&from[i]);
		if (ftmp == 0)
			break;

		/*
		 * check to see if converting this character might make the
		 * conversion bleed into the null terminator
		 */
		if (outlen >= safelen) {
			charlen = FUNC0(tmp, ftmp, codepage, mapchar);
			if ((outlen + charlen) > (tolen - nullsize))
				break;
		}

		/* put converted char into 'to' buffer */
		charlen = FUNC0(&to[outlen], ftmp, codepage, mapchar);
		outlen += charlen;
	}

	/* properly null-terminate string */
	for (i = 0; i < nullsize; i++)
		to[outlen++] = 0;

	return outlen;
}