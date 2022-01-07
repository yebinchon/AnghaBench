
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAP_SETPCAP ;
 int SECURITY_CAP_AUDIT ;
 scalar_t__ cap_capable (int ,int ,int ,int ) ;
 int current ;
 int current_cred () ;

__attribute__((used)) static inline int cap_inh_is_capped(void)
{
 return 1;
}
