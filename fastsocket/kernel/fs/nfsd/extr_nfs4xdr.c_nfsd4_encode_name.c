
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int u8 ;
struct svc_rqst {int dummy; } ;
typedef int __be32 ;


 int BUG_ON (int) ;
 int IDMAP_NAMESZ ;
 int NFS4_ACL_WHO_NAMED ;
 int XDR_QUADLEN (int) ;
 int nfs4_acl_write_who (int,int *) ;
 int nfsd_map_gid_to_name (struct svc_rqst*,int ,int *) ;
 int nfsd_map_uid_to_name (struct svc_rqst*,int ,int *) ;
 int nfserr_resource ;
 int nfserrno (int) ;
 int * xdr_encode_opaque (int *,int *,int) ;

__attribute__((used)) static __be32
nfsd4_encode_name(struct svc_rqst *rqstp, int whotype, uid_t id, int group,
   __be32 **p, int *buflen)
{
 int status;

 if (*buflen < (XDR_QUADLEN(IDMAP_NAMESZ) << 2) + 4)
  return nfserr_resource;
 if (whotype != NFS4_ACL_WHO_NAMED)
  status = nfs4_acl_write_who(whotype, (u8 *)(*p + 1));
 else if (group)
  status = nfsd_map_gid_to_name(rqstp, id, (u8 *)(*p + 1));
 else
  status = nfsd_map_uid_to_name(rqstp, id, (u8 *)(*p + 1));
 if (status < 0)
  return nfserrno(status);
 *p = xdr_encode_opaque(*p, ((void*)0), status);
 *buflen -= (XDR_QUADLEN(status) << 2) + 4;
 BUG_ON(*buflen < 0);
 return 0;
}
