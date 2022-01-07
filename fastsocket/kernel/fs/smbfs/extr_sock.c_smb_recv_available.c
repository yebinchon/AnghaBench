
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* ops; } ;
struct smb_sb_info {int dummy; } ;
typedef int mm_segment_t ;
struct TYPE_2__ {int (* ioctl ) (struct socket*,int ,unsigned long) ;} ;


 int SIOCINQ ;
 int get_ds () ;
 int get_fs () ;
 struct socket* server_sock (struct smb_sb_info*) ;
 int set_fs (int ) ;
 int stub1 (struct socket*,int ,unsigned long) ;

int
smb_recv_available(struct smb_sb_info *server)
{
 mm_segment_t oldfs;
 int avail, err;
 struct socket *sock = server_sock(server);

 oldfs = get_fs();
 set_fs(get_ds());
 err = sock->ops->ioctl(sock, SIOCINQ, (unsigned long) &avail);
 set_fs(oldfs);
 return (err >= 0) ? avail : err;
}
