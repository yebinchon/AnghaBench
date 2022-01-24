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
struct x86_cpu_id {scalar_t__ feature; scalar_t__ family; scalar_t__ model; scalar_t__ vendor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,scalar_t__) ; 
 void* FUNC1 (scalar_t__) ; 
 scalar_t__ X86_FAMILY_ANY ; 
 scalar_t__ X86_FEATURE_ANY ; 
 scalar_t__ X86_MODEL_ANY ; 
 scalar_t__ X86_VENDOR_ANY ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(const char *filename, struct x86_cpu_id *id,
			   char *alias)
{
	id->feature = FUNC1(id->feature);
	id->family = FUNC1(id->family);
	id->model = FUNC1(id->model);
	id->vendor = FUNC1(id->vendor);

	FUNC3(alias, "x86cpu:");
	FUNC0(alias, "vendor:",  id->vendor != X86_VENDOR_ANY, id->vendor);
	FUNC0(alias, ":family:", id->family != X86_FAMILY_ANY, id->family);
	FUNC0(alias, ":model:",  id->model  != X86_MODEL_ANY,  id->model);
	FUNC0(alias, ":feature:*,", id->feature != X86_FEATURE_ANY, id->feature);
	FUNC2(alias, ",*");
	return 1;
}