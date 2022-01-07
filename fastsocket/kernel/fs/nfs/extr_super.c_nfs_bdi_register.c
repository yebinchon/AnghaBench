
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int s_dev; int backing_dev_info; } ;


 int bdi_register_dev (int *,int ) ;

__attribute__((used)) static int nfs_bdi_register(struct nfs_server *server)
{
 return bdi_register_dev(&server->backing_dev_info, server->s_dev);
}
