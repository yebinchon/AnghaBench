
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fh {int size; int data; } ;
typedef int __be32 ;


 int * xdr_encode_array (int *,int ,int ) ;

__attribute__((used)) static inline __be32 *
xdr_encode_fhandle(__be32 *p, const struct nfs_fh *fh)
{
 return xdr_encode_array(p, fh->data, fh->size);
}
