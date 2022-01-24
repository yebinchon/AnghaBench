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
typedef  int /*<<< orphan*/  u8 ;
typedef  unsigned int u16 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 unsigned int AFSTOKEN_K5_TIX_MAX ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int FUNC6(u8 **_ticket, u16 *_tktlen,
				    const __be32 **_xdr, unsigned *_toklen)
{
	const __be32 *xdr = *_xdr;
	unsigned toklen = *_toklen, len;

	/* there must be at least one length word */
	if (toklen <= 4)
		return -EINVAL;

	FUNC1(",{%x},%u", FUNC5(xdr[0]), toklen);

	len = FUNC5(*xdr++);
	toklen -= 4;
	if (len > AFSTOKEN_K5_TIX_MAX)
		return -EINVAL;
	*_tktlen = len;

	FUNC0("ticket len %u", len);

	if (len > 0) {
		*_ticket = FUNC3(len, GFP_KERNEL);
		if (!*_ticket)
			return -ENOMEM;
		FUNC4(*_ticket, xdr, len);
		len = (len + 3) & ~3;
		toklen -= len;
		xdr += len >> 2;
	}

	*_xdr = xdr;
	*_toklen = toklen;
	FUNC2(" = 0 [toklen=%u]", toklen);
	return 0;
}