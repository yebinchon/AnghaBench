
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYSTEM__SYSLOG_CONSOLE ;
 int SYSTEM__SYSLOG_MOD ;
 int SYSTEM__SYSLOG_READ ;
 int cap_syslog (int) ;
 int current ;
 int task_has_system (int ,int ) ;

__attribute__((used)) static int selinux_syslog(int type)
{
 int rc;

 rc = cap_syslog(type);
 if (rc)
  return rc;

 switch (type) {
 case 3:
 case 10:
  rc = task_has_system(current, SYSTEM__SYSLOG_READ);
  break;
 case 6:
 case 7:
 case 8:
  rc = task_has_system(current, SYSTEM__SYSLOG_CONSOLE);
  break;
 case 0:
 case 1:
 case 2:
 case 4:
 case 5:
 default:
  rc = task_has_system(current, SYSTEM__SYSLOG_MOD);
  break;
 }
 return rc;
}
