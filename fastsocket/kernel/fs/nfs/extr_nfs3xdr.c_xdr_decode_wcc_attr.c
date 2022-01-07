
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fattr {int valid; int pre_ctime; int pre_mtime; int pre_size; } ;
typedef int __be32 ;


 int NFS_ATTR_FATTR_PRECHANGE ;
 int NFS_ATTR_FATTR_PRECTIME ;
 int NFS_ATTR_FATTR_PREMTIME ;
 int NFS_ATTR_FATTR_PRESIZE ;
 int * xdr_decode_hyper (int *,int *) ;
 int * xdr_decode_time3 (int *,int *) ;

__attribute__((used)) static inline __be32 *
xdr_decode_wcc_attr(__be32 *p, struct nfs_fattr *fattr)
{
 p = xdr_decode_hyper(p, &fattr->pre_size);
 p = xdr_decode_time3(p, &fattr->pre_mtime);
 p = xdr_decode_time3(p, &fattr->pre_ctime);
 fattr->valid |= NFS_ATTR_FATTR_PRESIZE
  | NFS_ATTR_FATTR_PRECHANGE
  | NFS_ATTR_FATTR_PREMTIME
  | NFS_ATTR_FATTR_PRECTIME;
 return p;
}
