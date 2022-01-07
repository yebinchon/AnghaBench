
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int soft_margin ;

__attribute__((used)) static int softdog_set_heartbeat(int t)
{
 if ((t < 0x0001) || (t > 0xFFFF))
  return -EINVAL;

 soft_margin = t;
 return 0;
}
