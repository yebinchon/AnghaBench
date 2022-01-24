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
typedef  scalar_t__ uint ;
struct target_param {int /*<<< orphan*/  name; } ;
struct asn_oid {scalar_t__ len; } ;

/* Variables and functions */
 int SNMP_ADM_STR32_SIZ ; 
 scalar_t__ strcmp (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ target_decode_index (struct asn_oid const*,scalar_t__,char*) ; 
 struct target_param* target_first_param () ; 
 struct target_param* target_next_param (struct target_param*) ; 

__attribute__((used)) static struct target_param *
target_get_next_param(const struct asn_oid *oid, uint sub)
{
	char pname[SNMP_ADM_STR32_SIZ];
	struct target_param *param;

	if (oid->len - sub == 0)
		return (target_first_param());

	if (target_decode_index(oid, sub, pname) < 0)
		return (NULL);

	for (param = target_first_param(); param != NULL;
	    param = target_next_param(param))
		if (strcmp(pname, param->name) == 0)
			return (target_next_param(param));

	return (NULL);
}