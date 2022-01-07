
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int WRITE32 (int) ;
 int WRITEMEM (char*,int) ;
 int XDR_QUADLEN (int) ;
 int dprintk (char*,char*) ;
 int nfserr_resource ;

__attribute__((used)) static __be32 nfsd4_encode_components_esc(char sep, char *components,
       __be32 **pp, int *buflen,
       char esc_enter, char esc_exit)
{
 __be32 *p = *pp;
 __be32 *countp = p;
 int strlen, count=0;
 char *str, *end, *next;

 dprintk("nfsd4_encode_components(%s)\n", components);
 if ((*buflen -= 4) < 0)
  return nfserr_resource;
 WRITE32(0);
 end = str = components;
 while (*end) {
  bool found_esc = 0;


  if (*str == esc_enter) {
   for (; *end && (*end != esc_exit); end++)
                                        ;
   next = end + 1;
   if (*end && (!*next || *next == sep)) {
    str++;
    found_esc = 1;
   }
  }

  if (!found_esc)
   for (; *end && (*end != sep); end++)
                                   ;

  strlen = end - str;
  if (strlen) {
   if ((*buflen -= ((XDR_QUADLEN(strlen) << 2) + 4)) < 0)
    return nfserr_resource;
   WRITE32(strlen);
   WRITEMEM(str, strlen);
   count++;
  }
  else
   end++;
  str = end;
 }
 *pp = p;
 p = countp;
 WRITE32(count);
 return 0;
}
