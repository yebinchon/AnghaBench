
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_parsed_mount_data {unsigned int auth_flavor_len; scalar_t__* auth_flavors; } ;
struct nfs_mount_request {unsigned int* auth_flav_len; scalar_t__* auth_flavs; } ;


 int EACCES ;
 int MOUNT ;
 int dfprintk (int ,char*,...) ;
 int nfs_umount (struct nfs_mount_request*) ;

__attribute__((used)) static int nfs_walk_authlist(struct nfs_parsed_mount_data *args,
        struct nfs_mount_request *request)
{
 unsigned int i, j, server_authlist_len = *(request->auth_flav_len);
 if (server_authlist_len == 0)
  return 0;
 for (i = 0; i < args->auth_flavor_len; i++)
  for (j = 0; j < server_authlist_len; j++)
   if (args->auth_flavors[i] == request->auth_flavs[j]) {
    dfprintk(MOUNT, "NFS: using auth flavor %d\n",
     request->auth_flavs[j]);
    args->auth_flavors[0] = request->auth_flavs[j];
    return 0;
   }

 dfprintk(MOUNT, "NFS: server does not support requested auth flavor\n");
 nfs_umount(request);
 return -EACCES;
}
