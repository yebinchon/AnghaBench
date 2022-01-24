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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint ;
struct usm_user {int dummy; } ;
struct asn_oid {int dummy; } ;

/* Variables and functions */
 int SNMP_ADM_STR32_SIZ ; 
 int SNMP_ENGINE_ID_SIZ ; 
 struct usm_user* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct asn_oid const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static struct usm_user *
FUNC2(const struct asn_oid *oid, uint sub)
{
	uint32_t enginelen;
	char username[SNMP_ADM_STR32_SIZ];
	uint8_t engineid[SNMP_ENGINE_ID_SIZ];

	if (FUNC1(oid, sub, engineid, &enginelen, username) < 0)
		return (NULL);

	return (FUNC0(engineid, enginelen, username));
}