
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
typedef int __be32 ;


 int NFS4_OK ;
 int htonl (int ) ;

__attribute__((used)) static __be32 nfs4_callback_null(struct svc_rqst *rqstp, void *argp, void *resp)
{
 return htonl(NFS4_OK);
}
