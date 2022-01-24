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
typedef  scalar_t__ u_char ;
struct asn_oid {int dummy; } ;
struct asn_buf {int dummy; } ;
typedef  enum asn_err { ____Placeholder_asn_err } asn_err ;
typedef  int /*<<< orphan*/  asn_len_t ;

/* Variables and functions */
 int ASN_ERR_OK ; 
 int ASN_ERR_TAG ; 
 scalar_t__ ASN_TYPE_OBJID ; 
 int /*<<< orphan*/  FUNC0 (struct asn_buf*,char*,scalar_t__) ; 
 int FUNC1 (struct asn_buf*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct asn_buf*,int /*<<< orphan*/ ,struct asn_oid*) ; 

enum asn_err
FUNC3(struct asn_buf *b, struct asn_oid *oid)
{
	u_char type;
	asn_len_t len;
	enum asn_err err;

	if ((err = FUNC1(b, &type, &len)) != ASN_ERR_OK)
		return (err);
	if (type != ASN_TYPE_OBJID) {
		FUNC0(b, "bad type for OBJID (%u)", type);
		return (ASN_ERR_TAG);
	}
	return (FUNC2(b, len, oid));
}