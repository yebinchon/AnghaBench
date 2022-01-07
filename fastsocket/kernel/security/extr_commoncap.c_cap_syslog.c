
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAP_SYS_ADMIN ;
 int EPERM ;
 int capable (int ) ;
 scalar_t__ dmesg_restrict ;

int cap_syslog(int type)
{
 if (dmesg_restrict && !capable(CAP_SYS_ADMIN))
  return -EPERM;

 if ((type != 3 && type != 10) && !capable(CAP_SYS_ADMIN))
  return -EPERM;
 return 0;
}
