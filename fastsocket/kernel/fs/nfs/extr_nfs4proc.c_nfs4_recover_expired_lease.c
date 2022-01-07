
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int nfs_client; } ;


 int nfs4_client_recover_expired_lease (int ) ;

__attribute__((used)) static int nfs4_recover_expired_lease(struct nfs_server *server)
{
 return nfs4_client_recover_expired_lease(server->nfs_client);
}
