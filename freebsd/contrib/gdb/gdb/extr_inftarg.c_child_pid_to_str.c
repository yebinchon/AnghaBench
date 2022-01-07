
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;


 char* normal_pid_to_str (int ) ;

char *
child_pid_to_str (ptid_t ptid)
{
  return normal_pid_to_str (ptid);
}
