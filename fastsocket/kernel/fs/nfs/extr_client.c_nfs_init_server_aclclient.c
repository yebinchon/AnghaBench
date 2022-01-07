
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int caps; int flags; } ;


 int NFS_CAP_ACLS ;
 int NFS_MOUNT_NOACL ;

__attribute__((used)) static inline void nfs_init_server_aclclient(struct nfs_server *server)
{
 server->flags &= ~NFS_MOUNT_NOACL;
 server->caps &= ~NFS_CAP_ACLS;
}
