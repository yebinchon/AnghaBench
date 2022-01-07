
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;



__attribute__((used)) static int dccp_feat_preflist_match(u8 *servlist, u8 slen, u8 *clilist, u8 clen)
{
 u8 c, s;

 for (s = 0; s < slen; s++)
  for (c = 0; c < clen; c++)
   if (servlist[s] == clilist[c])
    return servlist[s];
 return -1;
}
