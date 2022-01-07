
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int sscanf (char const*,char*,int*,int*,int*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
val_parse_ts(const char *val, char *buf)
{
 int r, n;
 u_int i, f;

 if (strlen(val) > 2 && val[0] == '0' && val[1] == 'x') {

  r = sscanf(val + 2, "%x.%x%n", &i, &f, &n);
  if (r != 2 || (size_t)n != strlen(val + 2))
   return (0);
 } else {

  r = sscanf(val, "%d.%d%n", &i, &f, &n);
  if (r != 2 || (size_t)n != strlen(val))
   return (0);
 }
 buf[0] = i >> 24;
 buf[1] = i >> 16;
 buf[2] = i >> 8;
 buf[3] = i >> 0;
 buf[4] = f >> 24;
 buf[5] = f >> 16;
 buf[6] = f >> 8;
 buf[7] = f >> 0;
 return (1);
}
