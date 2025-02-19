
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int dummy; } ;
struct kvec {unsigned char* member_0; int member_1; } ;
struct cmtp_session {struct socket* sock; } ;
typedef int msg ;


 int BT_DBG (char*,struct cmtp_session*,unsigned char*,int) ;
 int kernel_sendmsg (struct socket*,struct msghdr*,struct kvec*,int,int) ;
 int memset (struct msghdr*,int ,int) ;

__attribute__((used)) static int cmtp_send_frame(struct cmtp_session *session, unsigned char *data, int len)
{
 struct socket *sock = session->sock;
 struct kvec iv = { data, len };
 struct msghdr msg;

 BT_DBG("session %p data %p len %d", session, data, len);

 if (!len)
  return 0;

 memset(&msg, 0, sizeof(msg));

 return kernel_sendmsg(sock, &msg, &iv, 1, len);
}
