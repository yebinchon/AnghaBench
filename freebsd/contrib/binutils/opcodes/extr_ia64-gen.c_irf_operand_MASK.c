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

/* Variables and functions */
 int IA64_OPND_CPUID_R3 ; 
 int IA64_OPND_DBR_R3 ; 
 int IA64_OPND_IBR_R3 ; 
 int IA64_OPND_MSR_R3 ; 
 int IA64_OPND_PKR_R3 ; 
 int IA64_OPND_PMC_R3 ; 
 int IA64_OPND_PMD_R3 ; 
 int IA64_OPND_RR_R3 ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static int 
FUNC1 (int op, const char *field)
{
  if (!field)
    {
      return op == IA64_OPND_RR_R3 || op == IA64_OPND_DBR_R3
        || op == IA64_OPND_IBR_R3  || op == IA64_OPND_PKR_R3
	|| op == IA64_OPND_PMC_R3  || op == IA64_OPND_PMD_R3
	|| op == IA64_OPND_MSR_R3 || op == IA64_OPND_CPUID_R3;
    }
  else
    {
      return ((op == IA64_OPND_RR_R3 && FUNC0 (field, "rr"))
              || (op == IA64_OPND_DBR_R3 && FUNC0 (field, "dbr"))
              || (op == IA64_OPND_IBR_R3 && FUNC0 (field, "ibr"))
              || (op == IA64_OPND_PKR_R3 && FUNC0 (field, "pkr"))
              || (op == IA64_OPND_PMC_R3 && FUNC0 (field, "pmc"))
              || (op == IA64_OPND_PMD_R3 && FUNC0 (field, "pmd"))
              || (op == IA64_OPND_MSR_R3 && FUNC0 (field, "msr"))
              || (op == IA64_OPND_CPUID_R3 && FUNC0 (field, "cpuid")));
    }
}