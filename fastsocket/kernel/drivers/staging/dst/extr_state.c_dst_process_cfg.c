
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int socket; int permissions; struct dst_cmd* data; struct dst_node* node; } ;
struct dst_node {int size; } ;
struct dst_cmd {int rw; int sector; } ;


 int dst_convert_cmd (struct dst_cmd*) ;
 int dst_data_send_header (int ,struct dst_cmd*,int,int ) ;
 int dst_state_lock (struct dst_state*) ;
 int dst_state_unlock (struct dst_state*) ;

__attribute__((used)) static int dst_process_cfg(struct dst_state *st)
{
 struct dst_node *n = st->node;
 struct dst_cmd *cmd = st->data;
 int err;

 cmd->sector = n->size;
 cmd->rw = st->permissions;

 dst_convert_cmd(cmd);

 dst_state_lock(st);
 err = dst_data_send_header(st->socket, cmd, sizeof(struct dst_cmd), 0);
 dst_state_unlock(st);

 return err;
}
