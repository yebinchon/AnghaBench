
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFINE (int ,int ) ;
 int MAX_NR_ZONES ;
 int NR_PAGEFLAGS ;
 int NR_PCG_FLAGS ;
 int __MAX_NR_ZONES ;
 int __NR_PAGEFLAGS ;
 int __NR_PCG_FLAGS ;

void foo(void)
{

 DEFINE(NR_PAGEFLAGS, __NR_PAGEFLAGS);
 DEFINE(MAX_NR_ZONES, __MAX_NR_ZONES);
 DEFINE(NR_PCG_FLAGS, __NR_PCG_FLAGS);

}
