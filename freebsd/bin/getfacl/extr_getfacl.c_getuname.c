
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uids ;
typedef int uid_t ;
struct passwd {char* pw_name; } ;


 struct passwd* getpwuid (int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static char *
getuname(uid_t uid)
{
 struct passwd *pw;
 static char uids[10];

 if ((pw = getpwuid(uid)) == ((void*)0)) {
  (void)snprintf(uids, sizeof(uids), "%u", uid);
  return (uids);
 } else
  return (pw->pw_name);
}
