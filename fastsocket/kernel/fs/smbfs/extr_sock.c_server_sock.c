
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
struct smb_sb_info {struct file* sock_file; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_3__ {int d_inode; } ;


 int PARANOIA (char*) ;
 struct socket* SOCKET_I (int ) ;
 int smb_valid_socket (int ) ;

__attribute__((used)) static struct socket *
server_sock(struct smb_sb_info *server)
{
 struct file *file;

 if (server && (file = server->sock_file))
 {




  return SOCKET_I(file->f_path.dentry->d_inode);
 }
 return ((void*)0);
}
