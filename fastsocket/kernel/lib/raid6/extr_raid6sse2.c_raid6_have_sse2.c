
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X86_FEATURE_FXSR ;
 int X86_FEATURE_MMX ;
 int X86_FEATURE_XMM ;
 int X86_FEATURE_XMM2 ;
 scalar_t__ boot_cpu_has (int ) ;

__attribute__((used)) static int raid6_have_sse2(void)
{

 return boot_cpu_has(X86_FEATURE_MMX) &&
  boot_cpu_has(X86_FEATURE_FXSR) &&
  boot_cpu_has(X86_FEATURE_XMM) &&
  boot_cpu_has(X86_FEATURE_XMM2);
}
