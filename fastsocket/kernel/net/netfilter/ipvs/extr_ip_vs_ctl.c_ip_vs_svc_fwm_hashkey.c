
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int IP_VS_SVC_TAB_MASK ;

__attribute__((used)) static __inline__ unsigned ip_vs_svc_fwm_hashkey(__u32 fwmark)
{
 return fwmark & IP_VS_SVC_TAB_MASK;
}
