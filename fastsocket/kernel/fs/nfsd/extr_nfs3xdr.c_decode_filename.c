
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int NFS3_MAXNAMLEN ;
 int * xdr_decode_string_inplace (int *,char**,unsigned int*,int ) ;

__attribute__((used)) static __be32 *
decode_filename(__be32 *p, char **namp, unsigned int *lenp)
{
 char *name;
 unsigned int i;

 if ((p = xdr_decode_string_inplace(p, namp, lenp, NFS3_MAXNAMLEN)) != ((void*)0)) {
  for (i = 0, name = *namp; i < *lenp; i++, name++) {
   if (*name == '\0' || *name == '/')
    return ((void*)0);
  }
 }

 return p;
}
