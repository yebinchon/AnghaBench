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
struct snmp_v1_trap {unsigned long* id; scalar_t__ ip_address; int /*<<< orphan*/  time; int /*<<< orphan*/  specific; int /*<<< orphan*/  general; int /*<<< orphan*/  id_len; } ;
struct oct1_map {int dummy; } ;
struct asn1_ctx {scalar_t__ pointer; int /*<<< orphan*/  begin; } ;
typedef  int /*<<< orphan*/  __sum16 ;

/* Variables and functions */
 unsigned int ASN1_APL ; 
 unsigned int ASN1_INT ; 
 unsigned int ASN1_OJI ; 
 unsigned int ASN1_OTS ; 
 unsigned int ASN1_PRI ; 
 unsigned int ASN1_UNI ; 
 unsigned int SNMP_IPA ; 
 unsigned int SNMP_TIT ; 
 int /*<<< orphan*/  FUNC0 (struct asn1_ctx*,unsigned char**,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct asn1_ctx*,unsigned char*,unsigned char**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct asn1_ctx*,unsigned char*,unsigned long**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct asn1_ctx*,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct asn1_ctx*,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,struct oct1_map const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned char FUNC7(struct asn1_ctx *ctx,
				      struct snmp_v1_trap *trap,
				      const struct oct1_map *map,
				      __sum16 *check)
{
	unsigned int cls, con, tag, len;
	unsigned char *end;

	if (!FUNC0(ctx, &end, &cls, &con, &tag))
		return 0;

	if (cls != ASN1_UNI || con != ASN1_PRI || tag != ASN1_OJI)
		return 0;

	if (!FUNC2(ctx, end, &trap->id, &trap->id_len))
		return 0;

	if (!FUNC0(ctx, &end, &cls, &con, &tag))
		goto err_id_free;

	if (!((cls == ASN1_APL && con == ASN1_PRI && tag == SNMP_IPA) ||
	      (cls == ASN1_UNI && con == ASN1_PRI && tag == ASN1_OTS)))
		goto err_id_free;

	if (!FUNC1(ctx, end, (unsigned char **)&trap->ip_address, &len))
		goto err_id_free;

	/* IPv4 only */
	if (len != 4)
		goto err_addr_free;

	FUNC6(ctx->begin, ctx->pointer - 4, map, check);

	if (!FUNC0(ctx, &end, &cls, &con, &tag))
		goto err_addr_free;

	if (cls != ASN1_UNI || con != ASN1_PRI || tag != ASN1_INT)
		goto err_addr_free;

	if (!FUNC3(ctx, end, &trap->general))
		goto err_addr_free;

	if (!FUNC0(ctx, &end, &cls, &con, &tag))
		goto err_addr_free;

	if (cls != ASN1_UNI || con != ASN1_PRI || tag != ASN1_INT)
		goto err_addr_free;

	if (!FUNC3(ctx, end, &trap->specific))
		goto err_addr_free;

	if (!FUNC0(ctx, &end, &cls, &con, &tag))
		goto err_addr_free;

	if (!((cls == ASN1_APL && con == ASN1_PRI && tag == SNMP_TIT) ||
	      (cls == ASN1_UNI && con == ASN1_PRI && tag == ASN1_INT)))
		goto err_addr_free;

	if (!FUNC4(ctx, end, &trap->time))
		goto err_addr_free;

	return 1;

err_addr_free:
	FUNC5((unsigned long *)trap->ip_address);

err_id_free:
	FUNC5(trap->id);

	return 0;
}