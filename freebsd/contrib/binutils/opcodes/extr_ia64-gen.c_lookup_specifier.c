
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CONST_STRNEQ (char const*,char*) ;
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
 int _ (char*) ;
 scalar_t__ strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 int * strstr (char const*,char*) ;
 int warn (int ,char const*) ;

__attribute__((used)) static int
lookup_specifier (const char *name)
{
  if (strchr (name, '%'))
    {
      if (strstr (name, "AR[K%]") != ((void*)0))
        return IA64_RS_AR_K;
      if (strstr (name, "AR[UNAT]") != ((void*)0))
        return IA64_RS_AR_UNAT;
      if (strstr (name, "AR%, % in 8") != ((void*)0))
        return IA64_RS_AR;
      if (strstr (name, "AR%, % in 48") != ((void*)0))
        return IA64_RS_ARb;
      if (strstr (name, "BR%") != ((void*)0))
        return IA64_RS_BR;
      if (strstr (name, "CR[IRR%]") != ((void*)0))
        return IA64_RS_CR_IRR;
      if (strstr (name, "CR[LRR%]") != ((void*)0))
        return IA64_RS_CR_LRR;
      if (strstr (name, "CR%") != ((void*)0))
        return IA64_RS_CR;
      if (strstr (name, "FR%, % in 0") != ((void*)0))
        return IA64_RS_FR;
      if (strstr (name, "FR%, % in 2") != ((void*)0))
        return IA64_RS_FRb;
      if (strstr (name, "GR%") != ((void*)0))
        return IA64_RS_GR;
      if (strstr (name, "PR%, % in 1 ") != ((void*)0))
        return IA64_RS_PR;
      if (strstr (name, "PR%, % in 16 ") != ((void*)0))
 return IA64_RS_PRr;

      warn (_("don't know how to specify %% dependency %s\n"),
     name);
    }
  else if (strchr (name, '#'))
    {
      if (strstr (name, "CPUID#") != ((void*)0))
        return IA64_RS_CPUID;
      if (strstr (name, "DBR#") != ((void*)0))
        return IA64_RS_DBR;
      if (strstr (name, "IBR#") != ((void*)0))
        return IA64_RS_IBR;
      if (strstr (name, "MSR#") != ((void*)0))
 return IA64_RS_MSR;
      if (strstr (name, "PKR#") != ((void*)0))
        return IA64_RS_PKR;
      if (strstr (name, "PMC#") != ((void*)0))
        return IA64_RS_PMC;
      if (strstr (name, "PMD#") != ((void*)0))
        return IA64_RS_PMD;
      if (strstr (name, "RR#") != ((void*)0))
        return IA64_RS_RR;

      warn (_("Don't know how to specify # dependency %s\n"),
     name);
    }
  else if (CONST_STRNEQ (name, "AR[FPSR]"))
    return IA64_RS_AR_FPSR;
  else if (CONST_STRNEQ (name, "AR["))
    return IA64_RS_ARX;
  else if (CONST_STRNEQ (name, "CR["))
    return IA64_RS_CRX;
  else if (CONST_STRNEQ (name, "PSR."))
    return IA64_RS_PSR;
  else if (strcmp (name, "InService*") == 0)
    return IA64_RS_INSERVICE;
  else if (strcmp (name, "GR0") == 0)
    return IA64_RS_GR0;
  else if (strcmp (name, "CFM") == 0)
    return IA64_RS_CFM;
  else if (strcmp (name, "PR63") == 0)
    return IA64_RS_PR63;
  else if (strcmp (name, "RSE") == 0)
    return IA64_RS_RSE;

  return IA64_RS_ANY;
}
