
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct socket {TYPE_2__* ops; TYPE_4__* sk; } ;
struct TYPE_5__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct file {scalar_t__ private_data; int sub_file; } ;
typedef int kernel_cap_t ;
typedef int addr ;
struct TYPE_8__ {scalar_t__ sk_state; int sk_max_ack_backlog; } ;
struct TYPE_7__ {int saddr; int sport; } ;
struct TYPE_6__ {int (* bind ) (struct socket*,struct sockaddr*,int) ;int (* listen ) (struct socket*,int) ;} ;


 int AF_INET ;
 int DEBUG ;
 int DPRINTK (int ,char*,int,...) ;
 int EEXIST ;
 int EINVAL ;
 int EPRINTK_LIMIT (int ,char*,...) ;
 int ERR ;
 int INFO ;
 scalar_t__ TCP_LISTEN ;
 int fastsocket_spawn_mutex ;
 int fsocket_filp_close_spawn (int) ;
 int fsocket_process_affinity_check (int) ;
 int fsocket_process_affinity_restore (int) ;
 int fsocket_process_affinity_set (int) ;
 int fsocket_reset_bind_cap (int *) ;
 int fsocket_set_bind_cap (int *) ;
 int fsocket_sk_affinity_release (struct socket*) ;
 int fsocket_sk_affinity_set (struct socket*,int) ;
 int fsocket_spawn_clone (int,struct socket*,struct socket**) ;
 TYPE_3__* inet_sk (TYPE_4__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct socket*,struct sockaddr*,int) ;
 int stub2 (struct socket*,int) ;

int fsocket_spawn(struct file *filp, int fd, int tcpu)
{
 int ret = 0, backlog;
 int cpu;
 struct socket *sock, *newsock;
 struct sockaddr_in addr;
 kernel_cap_t p;

 DPRINTK(INFO, "Listen spawn listen fd %d on CPU %d. filp->sub_file(%p)\n", fd, tcpu, filp->sub_file);

 mutex_lock(&fastsocket_spawn_mutex);

 if (filp->sub_file) {
  EPRINTK_LIMIT(ERR, "Spawn on a already spawned file 0x%p\n", filp);
  ret = -EEXIST;
  goto out;
 }

 sock = (struct socket *)filp->private_data;

 if (sock->sk->sk_state != TCP_LISTEN) {
  EPRINTK_LIMIT(ERR, "Spawn on a non-listen socket[%d-%d] file 0x%p\n", fd, sock->sk->sk_state, filp);
  ret = -EINVAL;
  goto out;
 }

 ret = fsocket_process_affinity_check(tcpu);
 if (ret < 0) {
  EPRINTK_LIMIT(ERR, "Set CPU affinity for process failed\n");
  goto out;
 }

 cpu = ret;
 newsock = ((void*)0);
 ret = fsocket_spawn_clone(fd, sock, &newsock);
 if (ret < 0) {
  EPRINTK_LIMIT(ERR, "Clone listen socket failed[%d]\n", ret);
  goto restore;
 }

 fsocket_sk_affinity_set(newsock, cpu);

 fsocket_set_bind_cap(&p);

 addr.sin_family = AF_INET;
 addr.sin_port = inet_sk(sock->sk)->sport;
 addr.sin_addr.s_addr = inet_sk(sock->sk)->saddr;

 ret = newsock->ops->bind(newsock, (struct sockaddr *)&addr, sizeof(addr));
 if (ret < 0)
 {
  EPRINTK_LIMIT(ERR, "Bind spawned socket %d failed[%d]\n", fd, ret);
  goto release;
 }

 fsocket_reset_bind_cap(&p);

 backlog = sock->sk->sk_max_ack_backlog;

 ret = newsock->ops->listen(newsock, backlog);
 if (ret < 0)
 {
  EPRINTK_LIMIT(ERR, "Listen spawned socket %d failed[%d]\n", fd, ret);
  goto release;
 }

 fsocket_process_affinity_set(cpu);

 goto out;

release:
 fsocket_sk_affinity_release(newsock);
 fsocket_filp_close_spawn(fd);
restore:
 fsocket_process_affinity_restore(cpu);
out:
 mutex_unlock(&fastsocket_spawn_mutex);

 DPRINTK(DEBUG, "fsocket_spawn return value is %d\n", ret);

 return ret;
}
