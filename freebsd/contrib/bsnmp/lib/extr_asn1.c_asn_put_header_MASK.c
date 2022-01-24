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
typedef  scalar_t__ u_int ;
typedef  int u_char ;
struct asn_buf {scalar_t__ asn_len; int /*<<< orphan*/ * asn_ptr; } ;
typedef  enum asn_err { ____Placeholder_asn_err } asn_err ;
typedef  int /*<<< orphan*/  asn_len_t ;

/* Variables and functions */
 int ASN_ERR_EOBUF ; 
 int ASN_ERR_FAILED ; 
 int ASN_ERR_OK ; 
 int ASN_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

enum asn_err
FUNC2(struct asn_buf *b, u_char type, asn_len_t len)
{
	u_int lenlen;

	/* tag field */
	if ((type & ASN_TYPE_MASK) > 0x30) {
		FUNC0(NULL, "types > 0x30 not supported (%u)",
		    type & ASN_TYPE_MASK);
		return (ASN_ERR_FAILED);
	}
	if (b->asn_len == 0)
		return (ASN_ERR_EOBUF);

	*b->asn_ptr++ = type;
	b->asn_len--;

	/* length field */
	if ((lenlen = FUNC1(NULL, len)) == 0)
		return (ASN_ERR_FAILED);
	if (b->asn_len < lenlen)
		return (ASN_ERR_EOBUF);

	(void)FUNC1(b->asn_ptr, len);
	b->asn_ptr += lenlen;
	b->asn_len -= lenlen;
	return (ASN_ERR_OK);
}