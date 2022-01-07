
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int selinux_enabled ;

bool selinux_is_enabled(void)
{
 return selinux_enabled;
}
