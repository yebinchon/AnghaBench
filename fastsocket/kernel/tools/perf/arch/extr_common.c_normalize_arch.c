
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char) ;
 int strcmp (char*,char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static const char *normalize_arch(char *arch)
{
 if (!strcmp(arch, "x86_64"))
  return "x86";
 if (arch[0] == 'i' && arch[2] == '8' && arch[3] == '6')
  return "x86";
 if (!strcmp(arch, "sun4u") || !strncmp(arch, "sparc", 5))
  return "sparc";
 if (!strncmp(arch, "arm", 3) || !strcmp(arch, "sa110"))
  return "arm";
 if (!strncmp(arch, "s390", 4))
  return "s390";
 if (!strncmp(arch, "parisc", 6))
  return "parisc";
 if (!strncmp(arch, "powerpc", 7) || !strncmp(arch, "ppc", 3))
  return "powerpc";
 if (!strncmp(arch, "mips", 4))
  return "mips";
 if (!strncmp(arch, "sh", 2) && isdigit(arch[2]))
  return "sh";

 return arch;
}
