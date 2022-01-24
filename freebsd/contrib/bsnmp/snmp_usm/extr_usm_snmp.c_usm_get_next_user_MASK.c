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
typedef  scalar_t__ uint ;
struct usm_user {int dummy; } ;
struct asn_oid {scalar_t__ len; } ;

/* Variables and functions */
 int SNMP_ADM_STR32_SIZ ; 
 int SNMP_ENGINE_ID_SIZ ; 
 struct usm_user* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct usm_user* FUNC1 () ; 
 struct usm_user* FUNC2 (struct usm_user*) ; 
 scalar_t__ FUNC3 (struct asn_oid const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static struct usm_user *
FUNC4(const struct asn_oid *oid, uint sub)
{
	uint32_t enginelen;
	char username[SNMP_ADM_STR32_SIZ];
	uint8_t engineid[SNMP_ENGINE_ID_SIZ];
	struct usm_user *uuser;

	if (oid->len - sub == 0)
		return (FUNC1());

	if (FUNC3(oid, sub, engineid, &enginelen, username) < 0)
		return (NULL);

	if ((uuser = FUNC0(engineid, enginelen, username)) != NULL)
		return (FUNC2(uuser));

	return (NULL);
}