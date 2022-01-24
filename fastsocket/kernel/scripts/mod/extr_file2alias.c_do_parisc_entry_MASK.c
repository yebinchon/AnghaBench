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
struct parisc_device_id {scalar_t__ hw_type; scalar_t__ hversion; scalar_t__ hversion_rev; scalar_t__ sversion; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,scalar_t__) ; 
 scalar_t__ PA_HVERSION_ANY_ID ; 
 scalar_t__ PA_HVERSION_REV_ANY_ID ; 
 scalar_t__ PA_HWTYPE_ANY_ID ; 
 scalar_t__ PA_SVERSION_ANY_ID ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(const char *filename, struct parisc_device_id *id,
		char *alias)
{
	id->hw_type = FUNC1(id->hw_type);
	id->hversion = FUNC1(id->hversion);
	id->hversion_rev = FUNC1(id->hversion_rev);
	id->sversion = FUNC1(id->sversion);

	FUNC3(alias, "parisc:");
	FUNC0(alias, "t", id->hw_type != PA_HWTYPE_ANY_ID, id->hw_type);
	FUNC0(alias, "hv", id->hversion != PA_HVERSION_ANY_ID, id->hversion);
	FUNC0(alias, "rev", id->hversion_rev != PA_HVERSION_REV_ANY_ID, id->hversion_rev);
	FUNC0(alias, "sv", id->sversion != PA_SVERSION_ANY_ID, id->sversion);

	FUNC2(alias);
	return 1;
}