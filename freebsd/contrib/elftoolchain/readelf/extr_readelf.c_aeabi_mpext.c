
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_mp ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_mpext(uint64_t mp)
{
 static char s_mp[32];

 switch (mp) {
 case 0: return "Not allowed";
 case 1: return "Allowed";
 default:
  snprintf(s_mp, sizeof(s_mp), "Unknown (%ju)",
      (uintmax_t) mp);
  return (s_mp);
 }
}
