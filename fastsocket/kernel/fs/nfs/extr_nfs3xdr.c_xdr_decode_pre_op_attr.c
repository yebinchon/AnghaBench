
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fattr {int dummy; } ;
typedef int __be32 ;


 int * xdr_decode_wcc_attr (int *,struct nfs_fattr*) ;

__attribute__((used)) static inline __be32 *
xdr_decode_pre_op_attr(__be32 *p, struct nfs_fattr *fattr)
{
 if (*p++)
  return xdr_decode_wcc_attr(p, fattr);
 return p;
}
