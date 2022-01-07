
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct svc_rqst {int dummy; } ;
typedef int __be32 ;


 int NFS4_ACL_WHO_NAMED ;
 int nfsd4_encode_name (struct svc_rqst*,int ,int ,int ,int **,int*) ;

__attribute__((used)) static inline __be32
nfsd4_encode_user(struct svc_rqst *rqstp, uid_t uid, __be32 **p, int *buflen)
{
 return nfsd4_encode_name(rqstp, NFS4_ACL_WHO_NAMED, uid, 0, p, buflen);
}
