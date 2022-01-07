
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_fs_location {int path; int hosts; } ;
typedef scalar_t__ __be32 ;


 scalar_t__ nfsd4_encode_components (char,int ,scalar_t__**,int*) ;
 scalar_t__ nfsd4_encode_components_esc (char,int ,scalar_t__**,int*,char,char) ;

__attribute__((used)) static __be32 nfsd4_encode_fs_location4(struct nfsd4_fs_location *location,
        __be32 **pp, int *buflen)
{
 __be32 status;
 __be32 *p = *pp;

 status = nfsd4_encode_components_esc(':', location->hosts, &p, buflen,
      '[', ']');
 if (status)
  return status;
 status = nfsd4_encode_components('/', location->path, &p, buflen);
 if (status)
  return status;
 *pp = p;
 return 0;
}
