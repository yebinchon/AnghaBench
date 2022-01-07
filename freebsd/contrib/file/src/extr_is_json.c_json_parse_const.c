
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINTF (char*,unsigned char const*,unsigned char const*) ;

__attribute__((used)) static int
json_parse_const(const unsigned char **ucp, const unsigned char *ue,
    const char *str, size_t len)
{
 const unsigned char *uc = *ucp;

 DPRINTF("Parse const: ", uc, *ucp);
 for (len--; uc < ue && --len;) {
  if (*uc++ == *++str)
   continue;
 }
 if (len)
  DPRINTF("Bad const: ", uc, *ucp);
 *ucp = uc;
 return len == 0;
}
