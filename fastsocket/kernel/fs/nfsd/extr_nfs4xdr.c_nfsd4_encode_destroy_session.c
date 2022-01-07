
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_destroy_session {int dummy; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef int __be32 ;



__attribute__((used)) static __be32
nfsd4_encode_destroy_session(struct nfsd4_compoundres *resp, int nfserr,
        struct nfsd4_destroy_session *destroy_session)
{
 return nfserr;
}
