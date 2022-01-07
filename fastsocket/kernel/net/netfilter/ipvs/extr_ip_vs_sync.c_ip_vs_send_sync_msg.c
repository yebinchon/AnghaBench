
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct ip_vs_sync_mesg {int size; } ;


 int EAGAIN ;
 int htons (int) ;
 int ip_vs_send_async (struct socket*,char*,int) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int
ip_vs_send_sync_msg(struct socket *sock, struct ip_vs_sync_mesg *msg)
{
 int msize;
 int ret;

 msize = msg->size;


 msg->size = htons(msg->size);

 ret = ip_vs_send_async(sock, (char *)msg, msize);
 if (ret >= 0 || ret == -EAGAIN)
  return ret;
 pr_err("ip_vs_send_async error %d\n", ret);
 return 0;
}
