
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int security_context_to_sid (char*,int ,scalar_t__*) ;
 scalar_t__ selinux_enabled ;
 int strlen (char*) ;

int selinux_string_to_sid(char *str, u32 *sid)
{
 if (selinux_enabled)
  return security_context_to_sid(str, strlen(str), sid);
 else {
  *sid = 0;
  return 0;
 }
}
