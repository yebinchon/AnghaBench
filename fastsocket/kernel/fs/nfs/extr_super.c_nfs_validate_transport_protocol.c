
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int protocol; } ;
struct nfs_parsed_mount_data {TYPE_1__ nfs_server; } ;






__attribute__((used)) static void nfs_validate_transport_protocol(struct nfs_parsed_mount_data *mnt)
{
 switch (mnt->nfs_server.protocol) {
 case 128:
 case 129:
 case 130:
  break;
 default:
  mnt->nfs_server.protocol = 129;
 }
}
