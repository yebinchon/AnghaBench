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
struct snmp_request {int /*<<< orphan*/  error_index; int /*<<< orphan*/  error_status; int /*<<< orphan*/  id; } ;
struct asn1_ctx {int dummy; } ;

/* Variables and functions */
 unsigned int ASN1_INT ; 
 unsigned int ASN1_PRI ; 
 unsigned int ASN1_UNI ; 
 int /*<<< orphan*/  FUNC0 (struct asn1_ctx*,unsigned char**,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct asn1_ctx*,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct asn1_ctx*,unsigned char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned char FUNC3(struct asn1_ctx *ctx,
					 struct snmp_request *request)
{
	unsigned int cls, con, tag;
	unsigned char *end;

	if (!FUNC0(ctx, &end, &cls, &con, &tag))
		return 0;

	if (cls != ASN1_UNI || con != ASN1_PRI || tag != ASN1_INT)
		return 0;

	if (!FUNC2(ctx, end, &request->id))
		return 0;

	if (!FUNC0(ctx, &end, &cls, &con, &tag))
		return 0;

	if (cls != ASN1_UNI || con != ASN1_PRI || tag != ASN1_INT)
		return 0;

	if (!FUNC1(ctx, end, &request->error_status))
		return 0;

	if (!FUNC0(ctx, &end, &cls, &con, &tag))
		return 0;

	if (cls != ASN1_UNI || con != ASN1_PRI || tag != ASN1_INT)
		return 0;

	if (!FUNC1(ctx, end, &request->error_index))
		return 0;

	return 1;
}