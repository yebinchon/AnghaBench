
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ICMP_ECHO ;

__attribute__((used)) static inline int ping_supported(int type, int code)
{
 if (type == ICMP_ECHO && code == 0)
  return 1;
 return 0;
}
