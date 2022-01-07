
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef int __be32 ;


 int XDR_QUADLEN (unsigned int) ;
 unsigned int be32_to_cpu (int ) ;

__be32 *
xdr_decode_string_inplace(__be32 *p, char **sp,
     unsigned int *lenp, unsigned int maxlen)
{
 u32 len;

 len = be32_to_cpu(*p++);
 if (len > maxlen)
  return ((void*)0);
 *lenp = len;
 *sp = (char *) p;
 return p + XDR_QUADLEN(len);
}
