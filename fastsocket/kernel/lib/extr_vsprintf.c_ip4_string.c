
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 char* put_dec_trunc (char*,int const) ;

__attribute__((used)) static char *ip4_string(char *p, const u8 *addr, bool leading_zeros)
{
 int i;

 for (i = 0; i < 4; i++) {
  char temp[3];
  int digits = put_dec_trunc(temp, addr[i]) - temp;
  if (leading_zeros) {
   if (digits < 3)
    *p++ = '0';
   if (digits < 2)
    *p++ = '0';
  }

  while (digits--)
   *p++ = temp[digits];
  if (i < 3)
   *p++ = '.';
 }

 *p = '\0';
 return p;
}
