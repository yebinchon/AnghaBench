
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int BUG () ;
 int random32 () ;

void
gss_krb5_make_confounder(char *p, u32 conflen)
{
 static u64 i = 0;
 u64 *q = (u64 *)p;
 if (i == 0) {
  i = random32();
  i = (i << 32) | random32();
 }

 switch (conflen) {
 case 16:
  *q++ = i++;

 case 8:
  *q++ = i++;
  break;
 default:
  BUG();
 }
}
