
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fh {scalar_t__ size; int data; } ;
typedef int __be32 ;


 scalar_t__ NFS_MAXFHSIZE ;
 int XDR_QUADLEN (scalar_t__) ;
 int dprintk (char*,scalar_t__,scalar_t__) ;
 int memcpy (int ,int *,scalar_t__) ;
 int memset (int ,int ,int) ;
 scalar_t__ ntohl (int ) ;

__attribute__((used)) static __be32 *
nlm4_decode_fh(__be32 *p, struct nfs_fh *f)
{
 memset(f->data, 0, sizeof(f->data));
 f->size = ntohl(*p++);
 if (f->size > NFS_MAXFHSIZE) {
  dprintk("lockd: bad fhandle size %d (should be <=%d)\n",
   f->size, NFS_MAXFHSIZE);
  return ((void*)0);
 }
       memcpy(f->data, p, f->size);
 return p + XDR_QUADLEN(f->size);
}
