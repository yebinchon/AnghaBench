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
 scalar_t__ FUNC0 (char const*,char*) ; 
 int IA64_RS_ANY ; 
 int IA64_RS_AR ; 
 int IA64_RS_ARX ; 
 int IA64_RS_AR_FPSR ; 
 int IA64_RS_AR_K ; 
 int IA64_RS_AR_UNAT ; 
 int IA64_RS_ARb ; 
 int IA64_RS_BR ; 
 int IA64_RS_CFM ; 
 int IA64_RS_CPUID ; 
 int IA64_RS_CR ; 
 int IA64_RS_CRX ; 
 int IA64_RS_CR_IRR ; 
 int IA64_RS_CR_LRR ; 
 int IA64_RS_DBR ; 
 int IA64_RS_FR ; 
 int IA64_RS_FRb ; 
 int IA64_RS_GR ; 
 int IA64_RS_GR0 ; 
 int IA64_RS_IBR ; 
 int IA64_RS_INSERVICE ; 
 int IA64_RS_MSR ; 
 int IA64_RS_PKR ; 
 int IA64_RS_PMC ; 
 int IA64_RS_PMD ; 
 int IA64_RS_PR ; 
 int IA64_RS_PR63 ; 
 int IA64_RS_PRr ; 
 int IA64_RS_PSR ; 
 int IA64_RS_RR ; 
 int IA64_RS_RSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC6 (const char *name)
{
  if (FUNC2 (name, '%'))
    {
      if (FUNC4 (name, "AR[K%]") != NULL)
        return IA64_RS_AR_K;
      if (FUNC4 (name, "AR[UNAT]") != NULL)
        return IA64_RS_AR_UNAT;
      if (FUNC4 (name, "AR%, % in 8") != NULL)
        return IA64_RS_AR;
      if (FUNC4 (name, "AR%, % in 48") != NULL)
        return IA64_RS_ARb;
      if (FUNC4 (name, "BR%") != NULL)
        return IA64_RS_BR;
      if (FUNC4 (name, "CR[IRR%]") != NULL)
        return IA64_RS_CR_IRR;
      if (FUNC4 (name, "CR[LRR%]") != NULL)
        return IA64_RS_CR_LRR;
      if (FUNC4 (name, "CR%") != NULL)
        return IA64_RS_CR;
      if (FUNC4 (name, "FR%, % in 0") != NULL)
        return IA64_RS_FR;
      if (FUNC4 (name, "FR%, % in 2") != NULL)
        return IA64_RS_FRb;
      if (FUNC4 (name, "GR%") != NULL)
        return IA64_RS_GR;
      if (FUNC4 (name, "PR%, % in 1 ") != NULL)
        return IA64_RS_PR;
      if (FUNC4 (name, "PR%, % in 16 ") != NULL)
	return IA64_RS_PRr;

      FUNC5 (FUNC1("don't know how to specify %% dependency %s\n"),
	    name);
    }
  else if (FUNC2 (name, '#'))
    {
      if (FUNC4 (name, "CPUID#") != NULL)
        return IA64_RS_CPUID;
      if (FUNC4 (name, "DBR#") != NULL)
        return IA64_RS_DBR;
      if (FUNC4 (name, "IBR#") != NULL)
        return IA64_RS_IBR;
      if (FUNC4 (name, "MSR#") != NULL)
	return IA64_RS_MSR;
      if (FUNC4 (name, "PKR#") != NULL)
        return IA64_RS_PKR;
      if (FUNC4 (name, "PMC#") != NULL)
        return IA64_RS_PMC;
      if (FUNC4 (name, "PMD#") != NULL)
        return IA64_RS_PMD;
      if (FUNC4 (name, "RR#") != NULL)
        return IA64_RS_RR;
      
      FUNC5 (FUNC1("Don't know how to specify # dependency %s\n"),
	    name);
    }
  else if (FUNC0 (name, "AR[FPSR]"))
    return IA64_RS_AR_FPSR;
  else if (FUNC0 (name, "AR["))
    return IA64_RS_ARX;
  else if (FUNC0 (name, "CR["))
    return IA64_RS_CRX;
  else if (FUNC0 (name, "PSR."))
    return IA64_RS_PSR;
  else if (FUNC3 (name, "InService*") == 0)
    return IA64_RS_INSERVICE;
  else if (FUNC3 (name, "GR0") == 0)
    return IA64_RS_GR0;
  else if (FUNC3 (name, "CFM") == 0)
    return IA64_RS_CFM;
  else if (FUNC3 (name, "PR63") == 0)
    return IA64_RS_PR63;
  else if (FUNC3 (name, "RSE") == 0)
    return IA64_RS_RSE;

  return IA64_RS_ANY;
}