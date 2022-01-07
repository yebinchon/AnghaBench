
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int nfs_client; } ;


 int do_renew_lease (int ,unsigned long) ;

__attribute__((used)) static void renew_lease(const struct nfs_server *server, unsigned long timestamp)
{
 do_renew_lease(server->nfs_client, timestamp);
}
