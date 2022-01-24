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
struct target_address {int /*<<< orphan*/  name; } ;
struct asn_oid {scalar_t__ len; } ;

/* Variables and functions */
 int SNMP_ADM_STR32_SIZ ; 
 scalar_t__ strcmp (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ target_decode_index (struct asn_oid const*,scalar_t__,char*) ; 
 struct target_address* target_first_address () ; 
 struct target_address* target_next_address (struct target_address*) ; 

__attribute__((used)) static struct target_address *
target_get_next_address(const struct asn_oid * oid, uint sub)
{
	char aname[SNMP_ADM_STR32_SIZ];
	struct target_address *addrs;

	if (oid->len - sub == 0)
		return (target_first_address());

	if (target_decode_index(oid, sub, aname) < 0)
		return (NULL);

	for (addrs = target_first_address(); addrs != NULL;
	    addrs = target_next_address(addrs))
		if (strcmp(aname, addrs->name) == 0)
			return (target_next_address(addrs));

	return (NULL);
}