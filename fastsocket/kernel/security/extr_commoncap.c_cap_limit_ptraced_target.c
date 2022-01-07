
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAP_SETPCAP ;
 scalar_t__ capable (int ) ;

__attribute__((used)) static inline int cap_limit_ptraced_target(void)
{

 if (capable(CAP_SETPCAP))
  return 0;

 return 1;
}
