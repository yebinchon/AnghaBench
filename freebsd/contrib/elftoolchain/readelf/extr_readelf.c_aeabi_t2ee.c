
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_t2ee ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_t2ee(uint64_t t2ee)
{
 static char s_t2ee[32];

 switch (t2ee) {
 case 0: return "Not allowed";
 case 1: return "Allowed";
 default:
  snprintf(s_t2ee, sizeof(s_t2ee), "Unknown(%ju)",
      (uintmax_t) t2ee);
  return (s_t2ee);
 }

}
