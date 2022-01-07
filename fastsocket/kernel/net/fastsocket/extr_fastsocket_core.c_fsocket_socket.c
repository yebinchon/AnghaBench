
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket_alloc {int dummy; } ;
struct socket {int type; } ;
struct TYPE_4__ {TYPE_1__* nsproxy; } ;
struct TYPE_3__ {int net_ns; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPRINTK_LIMIT (int ,char*) ;
 int ERR ;
 int IPPROTO_TCP ;
 int PF_INET ;
 int SOCK_CLOEXEC ;
 int SOCK_NONBLOCK ;
 int SOCK_STREAM ;
 TYPE_2__* current ;
 int fsock_map_fd (struct socket*,int) ;
 int fsock_release_sock (struct socket*) ;
 struct socket* fsocket_alloc_socket () ;
 int fsocket_close (int) ;
 int fsocket_free_socket_mem (struct socket_alloc*) ;
 int fsocket_init_socket (struct socket*) ;
 int inet_create (int ,struct socket*,int ,int ) ;
 int security_socket_post_create (struct socket*,int ,int ,int ,int ) ;

int fsocket_socket(int flags)
{
 struct socket *sock;
 int fd;

 int err = 0;

 if (flags & ~(SOCK_CLOEXEC | SOCK_NONBLOCK)) {
  EPRINTK_LIMIT(ERR, "Unsupported Socket Flags For Fastsocket\n");
  err = -EINVAL;
  goto out;
 }

 sock = fsocket_alloc_socket();
 if (sock == ((void*)0)) {
  EPRINTK_LIMIT(ERR, "Allocate New Socket failed\n");
  err = -ENOMEM;
  goto out;
 }

 sock->type = SOCK_STREAM;

 err = inet_create(current->nsproxy->net_ns, sock, 0, 0);
 if (err < 0) {
  EPRINTK_LIMIT(ERR, "Initialize Inet Socket failed\n");
  goto free_sock;
 }

 fsocket_init_socket(sock);

 fd = fsock_map_fd(sock, flags);
 if (fd < 0) {
  err = fd;
  EPRINTK_LIMIT(ERR, "Map Socket FD failed\n");
  goto release_sock;
 }

 err = security_socket_post_create(sock, PF_INET, SOCK_STREAM, IPPROTO_TCP, 0);
 if (err) {
  EPRINTK_LIMIT(ERR, "security_socket_post_create failed\n");
  fsocket_close(fd);
  return err;
 }

 return fd;

release_sock:
 fsock_release_sock(sock);
free_sock:
 fsocket_free_socket_mem((struct socket_alloc*)sock);
out:
 return err;
}
