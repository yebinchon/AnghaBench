
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p ;
typedef int __be32 ;
typedef int __be16 ;


 int get_unaligned (int *) ;
 int memset (unsigned char*,int ,int) ;
 scalar_t__ strnicmp (char*,char const*,size_t) ;

__attribute__((used)) static int ip_vs_ftp_get_addrport(char *data, char *data_limit,
      const char *pattern, size_t plen, char term,
      __be32 *addr, __be16 *port,
      char **start, char **end)
{
 unsigned char p[6];
 int i = 0;

 if (data_limit - data < plen) {

  if (strnicmp(data, pattern, data_limit - data) == 0)
   return -1;
  else
   return 0;
 }

 if (strnicmp(data, pattern, plen) != 0) {
  return 0;
 }
 *start = data + plen;

 for (data = *start; *data != term; data++) {
  if (data == data_limit)
   return -1;
 }
 *end = data;

 memset(p, 0, sizeof(p));
 for (data = *start; data != *end; data++) {
  if (*data >= '0' && *data <= '9') {
   p[i] = p[i]*10 + *data - '0';
  } else if (*data == ',' && i < 5) {
   i++;
  } else {

   return -1;
  }
 }

 if (i != 5)
  return -1;

 *addr = get_unaligned((__be32 *)p);
 *port = get_unaligned((__be16 *)(p + 4));
 return 1;
}
