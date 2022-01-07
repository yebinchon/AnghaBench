
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int caps; } ;
struct nfs4_exception {int retry; } ;


 int EINVAL ;
 int NFS_CAP_ATOMIC_OPEN_V1 ;

__attribute__((used)) static bool nfs4_clear_cap_atomic_open_v1(struct nfs_server *server,
  int err, struct nfs4_exception *exception)
{
 if (err != -EINVAL)
  return 0;
 if (!(server->caps & NFS_CAP_ATOMIC_OPEN_V1))
  return 0;
 server->caps &= ~NFS_CAP_ATOMIC_OPEN_V1;
 exception->retry = 1;
 return 1;
}
