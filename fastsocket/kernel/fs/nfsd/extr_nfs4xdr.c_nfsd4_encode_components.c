
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int nfsd4_encode_components_esc (char,char*,int **,int*,int ,int ) ;

__attribute__((used)) static __be32 nfsd4_encode_components(char sep, char *components,
       __be32 **pp, int *buflen)
{
 return nfsd4_encode_components_esc(sep, components, pp, buflen, 0, 0);
}
