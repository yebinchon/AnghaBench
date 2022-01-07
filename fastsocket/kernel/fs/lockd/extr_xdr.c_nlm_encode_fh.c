
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fh {int data; } ;
typedef int __be32 ;


 int NFS2_FHSIZE ;
 int XDR_QUADLEN (int ) ;
 int htonl (int ) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static inline __be32 *
nlm_encode_fh(__be32 *p, struct nfs_fh *f)
{
 *p++ = htonl(NFS2_FHSIZE);
 memcpy(p, f->data, NFS2_FHSIZE);
 return p + XDR_QUADLEN(NFS2_FHSIZE);
}
