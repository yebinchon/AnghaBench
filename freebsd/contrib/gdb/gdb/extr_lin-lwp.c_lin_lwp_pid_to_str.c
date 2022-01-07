
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;
typedef int buf ;


 int GET_LWP (int ) ;
 scalar_t__ is_lwp (int ) ;
 char* normal_pid_to_str (int ) ;
 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static char *
lin_lwp_pid_to_str (ptid_t ptid)
{
  static char buf[64];

  if (is_lwp (ptid))
    {
      snprintf (buf, sizeof (buf), "LWP %ld", GET_LWP (ptid));
      return buf;
    }

  return normal_pid_to_str (ptid);
}
