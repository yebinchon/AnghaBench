
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {TYPE_2__* ops; } ;
struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct p9_trans_fd {int * conn; } ;
struct p9_fd_opts {int port; } ;
struct p9_client {scalar_t__ trans; } ;
struct TYPE_4__ {int (* connect ) (struct socket*,struct sockaddr*,int,int ) ;} ;


 int AF_INET ;
 int EINVAL ;
 int EIO ;
 int IPPROTO_TCP ;
 scalar_t__ IS_ERR (int *) ;
 int KERN_ERR ;
 int P9_EPRINTK (int ,char*,...) ;
 int PF_INET ;
 int PTR_ERR (int *) ;
 int SOCK_STREAM ;
 int htons (int ) ;
 int in_aton (char const*) ;
 int kfree (struct p9_trans_fd*) ;
 int * p9_conn_create (struct p9_client*) ;
 int p9_socket_open (struct p9_client*,struct socket*) ;
 int parse_opts (char*,struct p9_fd_opts*) ;
 int sock_create_kern (int ,int ,int ,struct socket**) ;
 int sock_release (struct socket*) ;
 int stub1 (struct socket*,struct sockaddr*,int,int ) ;
 scalar_t__ valid_ipaddr4 (char const*) ;

__attribute__((used)) static int
p9_fd_create_tcp(struct p9_client *client, const char *addr, char *args)
{
 int err;
 struct socket *csocket;
 struct sockaddr_in sin_server;
 struct p9_fd_opts opts;
 struct p9_trans_fd *p = ((void*)0);

 err = parse_opts(args, &opts);
 if (err < 0)
  return err;

 if (valid_ipaddr4(addr) < 0)
  return -EINVAL;

 csocket = ((void*)0);

 sin_server.sin_family = AF_INET;
 sin_server.sin_addr.s_addr = in_aton(addr);
 sin_server.sin_port = htons(opts.port);
 sock_create_kern(PF_INET, SOCK_STREAM, IPPROTO_TCP, &csocket);

 if (!csocket) {
  P9_EPRINTK(KERN_ERR, "p9_trans_tcp: problem creating socket\n");
  err = -EIO;
  goto error;
 }

 err = csocket->ops->connect(csocket,
        (struct sockaddr *)&sin_server,
        sizeof(struct sockaddr_in), 0);
 if (err < 0) {
  P9_EPRINTK(KERN_ERR,
   "p9_trans_tcp: problem connecting socket to %s\n",
   addr);
  goto error;
 }

 err = p9_socket_open(client, csocket);
 if (err < 0)
  goto error;

 p = (struct p9_trans_fd *) client->trans;
 p->conn = p9_conn_create(client);
 if (IS_ERR(p->conn)) {
  err = PTR_ERR(p->conn);
  p->conn = ((void*)0);
  goto error;
 }

 return 0;

error:
 if (csocket)
  sock_release(csocket);

 kfree(p);

 return err;
}
