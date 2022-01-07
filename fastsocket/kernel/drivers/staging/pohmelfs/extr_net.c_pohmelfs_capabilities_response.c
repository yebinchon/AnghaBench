
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfs_cmd {int id; int size; } ;
struct netfs_state {int data; struct netfs_cmd cmd; } ;


 int EINVAL ;


 int pohmelfs_crypto_cap_response (struct netfs_state*) ;
 int pohmelfs_data_recv (struct netfs_state*,int ,int ) ;
 int pohmelfs_root_cap_response (struct netfs_state*) ;

__attribute__((used)) static int pohmelfs_capabilities_response(struct netfs_state *st)
{
 struct netfs_cmd *cmd = &st->cmd;
 int err = 0;

 err = pohmelfs_data_recv(st, st->data, cmd->size);
 if (err)
  return err;

 switch (cmd->id) {
  case 129:
   return pohmelfs_crypto_cap_response(st);
  case 128:
   return pohmelfs_root_cap_response(st);
  default:
   break;
 }
 return -EINVAL;
}
