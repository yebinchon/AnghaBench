
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_socket; } ;
struct smb_sb_info {void (* data_ready ) (struct sock*,int) ;} ;


 int VERBOSE (char*,struct sock*,int) ;
 struct smb_sb_info* server_from_socket (int ) ;
 int smbiod_wake_up () ;

void
smb_data_ready(struct sock *sk, int len)
{
 struct smb_sb_info *server = server_from_socket(sk->sk_socket);
 void (*data_ready)(struct sock *, int) = server->data_ready;

 data_ready(sk, len);
 VERBOSE("(%p, %d)\n", sk, len);
 smbiod_wake_up();
}
