
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int flags; int nlm_host; } ;


 int NFS_MOUNT_LOCAL_FCNTL ;
 int NFS_MOUNT_LOCAL_FLOCK ;
 int nlmclnt_done (int ) ;

__attribute__((used)) static void nfs_destroy_server(struct nfs_server *server)
{
 if (!(server->flags & NFS_MOUNT_LOCAL_FLOCK) ||
   !(server->flags & NFS_MOUNT_LOCAL_FCNTL))
  nlmclnt_done(server->nlm_host);
}
