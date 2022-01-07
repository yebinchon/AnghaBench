
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X86_FEATURE_SSSE3 ;
 int X86_FEATURE_XMM ;
 int X86_FEATURE_XMM2 ;
 scalar_t__ boot_cpu_has (int ) ;

__attribute__((used)) static int raid6_has_ssse3(void)
{
 return boot_cpu_has(X86_FEATURE_XMM) &&
  boot_cpu_has(X86_FEATURE_XMM2) &&
  boot_cpu_has(X86_FEATURE_SSSE3);
}
