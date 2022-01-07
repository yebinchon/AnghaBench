
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct smb_sb_info {struct file* sock_file; int data_ready; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int sk_data_ready; } ;


 int VERBOSE (char*,struct socket*) ;
 int fput (struct file*) ;
 struct socket* server_sock (struct smb_sb_info*) ;

void
smb_close_socket(struct smb_sb_info *server)
{
 struct file * file = server->sock_file;

 if (file) {
  struct socket *sock = server_sock(server);

  VERBOSE("closing socket %p\n", sock);
  sock->sk->sk_data_ready = server->data_ready;
  server->sock_file = ((void*)0);
  fput(file);
 }
}
