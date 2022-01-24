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
typedef  int u_char ;
struct asn_buf {scalar_t__ asn_len; } ;
typedef  enum asn_err { ____Placeholder_asn_err } asn_err ;
typedef  scalar_t__ asn_len_t ;

/* Variables and functions */
 int ASN_ERR_EOBUF ; 
 int ASN_ERR_OK ; 
 int ASN_ERR_TAG ; 
 int ASN_TYPE_CONSTRUCTED ; 
 int ASN_TYPE_SEQUENCE ; 
 int /*<<< orphan*/  FUNC0 (struct asn_buf*,char*,...) ; 
 int FUNC1 (struct asn_buf*,int*,scalar_t__*) ; 

enum asn_err
FUNC2(struct asn_buf *b, asn_len_t *len)
{
	u_char type;
	enum asn_err err;

	if ((err = FUNC1(b, &type, len)) != ASN_ERR_OK)
		return (err);
	if (type != (ASN_TYPE_SEQUENCE|ASN_TYPE_CONSTRUCTED)) {
		FUNC0(b, "bad sequence type %u", type);
		return (ASN_ERR_TAG);
	}
	if (*len > b->asn_len) {
		FUNC0(b, "truncated sequence");
		return (ASN_ERR_EOBUF);
	}
	return (ASN_ERR_OK);
}