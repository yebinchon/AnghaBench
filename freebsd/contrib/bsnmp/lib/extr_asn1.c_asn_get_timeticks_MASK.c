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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_char ;
struct asn_buf {int dummy; } ;
typedef  enum asn_err { ____Placeholder_asn_err } asn_err ;
typedef  int /*<<< orphan*/  asn_len_t ;

/* Variables and functions */
 int ASN_APP_TIMETICKS ; 
 int ASN_CLASS_APPLICATION ; 
 int ASN_ERR_OK ; 
 int ASN_ERR_TAG ; 
 int /*<<< orphan*/  FUNC0 (struct asn_buf*,char*,int) ; 
 int FUNC1 (struct asn_buf*,int*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct asn_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

enum asn_err
FUNC3(struct asn_buf *b, uint32_t *vp)
{
	asn_len_t len;
	u_char type;
	enum asn_err err;

	if ((err = FUNC1(b, &type, &len)) != ASN_ERR_OK)
		return (err);
	if (type != (ASN_CLASS_APPLICATION|ASN_APP_TIMETICKS)) {
		FUNC0(b, "bad type for timeticks %u", type);
		return (ASN_ERR_TAG);
	}
	return (FUNC2(b, len, vp));
}