
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct socket {int dummy; } ;
struct rfcomm_session {struct socket* sock; } ;
struct msghdr {int dummy; } ;
struct kvec {int member_1; int * member_0; } ;
typedef int msg ;


 int BT_DBG (char*,struct rfcomm_session*,int) ;
 int kernel_sendmsg (struct socket*,struct msghdr*,struct kvec*,int,int) ;
 int memset (struct msghdr*,int ,int) ;

__attribute__((used)) static int rfcomm_send_frame(struct rfcomm_session *s, u8 *data, int len)
{
 struct socket *sock = s->sock;
 struct kvec iv = { data, len };
 struct msghdr msg;

 BT_DBG("session %p len %d", s, len);

 memset(&msg, 0, sizeof(msg));

 return kernel_sendmsg(sock, &msg, &iv, 1, len);
}
