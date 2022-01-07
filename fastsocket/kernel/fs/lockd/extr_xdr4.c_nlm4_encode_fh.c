
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fh {scalar_t__ size; int data; } ;
typedef scalar_t__ __be32 ;


 int XDR_QUADLEN (scalar_t__) ;
 int htonl (scalar_t__) ;
 int memcpy (scalar_t__*,int ,scalar_t__) ;

__attribute__((used)) static __be32 *
nlm4_encode_fh(__be32 *p, struct nfs_fh *f)
{
 *p++ = htonl(f->size);
 if (f->size) p[XDR_QUADLEN(f->size)-1] = 0;
 memcpy(p, f->data, f->size);
 return p + XDR_QUADLEN(f->size);
}
