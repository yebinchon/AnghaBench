
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_man {int dummy; } ;


 int pr_debug (char*,...) ;
 scalar_t__ strnicmp (char const*,char const*,size_t) ;

__attribute__((used)) static int find_pattern(const char *data, size_t dlen,
   const char *pattern, size_t plen,
   char skip, char term,
   unsigned int *numoff,
   unsigned int *numlen,
   struct nf_conntrack_man *cmd,
   int (*getnum)(const char *, size_t,
          struct nf_conntrack_man *, char))
{
 size_t i;

 pr_debug("find_pattern `%s': dlen = %Zu\n", pattern, dlen);
 if (dlen == 0)
  return 0;

 if (dlen <= plen) {

  if (strnicmp(data, pattern, dlen) == 0)
   return -1;
  else return 0;
 }

 if (strnicmp(data, pattern, plen) != 0) {
  return 0;
 }

 pr_debug("Pattern matches!\n");


 for (i = plen; data[i] != skip; i++)
  if (i == dlen - 1) return -1;


 i++;

 pr_debug("Skipped up to `%c'!\n", skip);

 *numoff = i;
 *numlen = getnum(data + i, dlen - i, cmd, term);
 if (!*numlen)
  return -1;

 pr_debug("Match succeeded!\n");
 return 1;
}
