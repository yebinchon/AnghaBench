
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfs_cmd {int iv; } ;
struct netfs_state {int eng; struct netfs_cmd cmd; } ;


 int pohmelfs_crypto_process_input_data (int *,int ,void*,int *,unsigned int) ;
 int pohmelfs_data_recv (struct netfs_state*,void*,unsigned int) ;

int pohmelfs_data_recv_and_check(struct netfs_state *st, void *data, unsigned int size)
{
 struct netfs_cmd *cmd = &st->cmd;
 int err;

 err = pohmelfs_data_recv(st, data, size);
 if (err)
  return err;

 return pohmelfs_crypto_process_input_data(&st->eng, cmd->iv, data, ((void*)0), size);
}
