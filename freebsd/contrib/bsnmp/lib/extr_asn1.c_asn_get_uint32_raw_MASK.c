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
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
struct asn_buf {int dummy; } ;
typedef  enum asn_err { ____Placeholder_asn_err } asn_err ;
typedef  int asn_len_t ;

/* Variables and functions */
 int ASN_ERR_BADLEN ; 
 int ASN_ERR_OK ; 
 int ASN_ERR_RANGE ; 
 int UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct asn_buf*,char*,int) ; 
 int FUNC1 (struct asn_buf*,int,int*) ; 

enum asn_err
FUNC2(struct asn_buf *b, asn_len_t len, uint32_t *vp)
{
	uint64_t v;
	enum asn_err err;

	if ((err = FUNC1(b, len, &v)) == ASN_ERR_OK) {
		if (len > 5) {
			FUNC0(b, "uint32 too long %u", len);
			err = ASN_ERR_BADLEN;
		} else if (v > UINT32_MAX) {
			FUNC0(b, "uint32 too large %llu", v);
			err = ASN_ERR_RANGE;
		}
		*vp = (uint32_t)v;
	}
	return (err);
}