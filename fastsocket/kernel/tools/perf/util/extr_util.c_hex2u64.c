
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int hex (char const) ;

int hex2u64(const char *ptr, u64 *long_val)
{
 const char *p = ptr;
 *long_val = 0;

 while (*p) {
  const int hex_val = hex(*p);

  if (hex_val < 0)
   break;

  *long_val = (*long_val << 4) | hex_val;
  p++;
 }

 return p - ptr;
}
