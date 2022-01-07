
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int caps; } ;
typedef enum open_claim_type4 { ____Placeholder_open_claim_type4 } open_claim_type4 ;


 int NFS4_OPEN_CLAIM_DELEGATE_CUR ;
 int NFS4_OPEN_CLAIM_DELEGATE_PREV ;



 int NFS4_OPEN_CLAIM_NULL ;
 int NFS_CAP_ATOMIC_OPEN_V1 ;

__attribute__((used)) static enum open_claim_type4
nfs4_map_atomic_open_claim(struct nfs_server *server,
  enum open_claim_type4 claim)
{
 if (server->caps & NFS_CAP_ATOMIC_OPEN_V1)
  return claim;
 switch (claim) {
 default:
  return claim;
 case 128:
  return NFS4_OPEN_CLAIM_NULL;
 case 130:
  return NFS4_OPEN_CLAIM_DELEGATE_CUR;
 case 129:
  return NFS4_OPEN_CLAIM_DELEGATE_PREV;
 }
}
