
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int dummy; } ;


 scalar_t__ tolower (int ) ;

__attribute__((used)) static inline int ncp_strnicmp(struct nls_table *t, const unsigned char *s1,
  const unsigned char *s2, int len)
{
 while (len--) {
  if (tolower(*s1++) != tolower(*s2++))
   return 1;
 }

 return 0;
}
