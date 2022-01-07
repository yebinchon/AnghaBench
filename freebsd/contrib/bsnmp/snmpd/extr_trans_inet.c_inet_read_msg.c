
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port_input {size_t length; int fd; int peerlen; int peer; int buflen; int buf; } ;
struct msghdr {int msg_iovlen; char* msg_control; int msg_flags; int msg_controllen; struct iovec* msg_iov; int msg_namelen; int msg_name; } ;
struct iovec {int iov_len; int iov_base; } ;
typedef int ssize_t ;
struct TYPE_2__ {int inTooLong; int silentDrops; } ;


 int MSG_TRUNC ;
 int RECV_CBUF_SIZE ;
 int memset (char*,int ,int ) ;
 int recvmsg (int ,struct msghdr*,int ) ;
 TYPE_1__ snmpd_stats ;

__attribute__((used)) static int
inet_read_msg(struct port_input *pi, struct msghdr *msg, char *cbuf)
{
 struct iovec iov[1];

 iov[0].iov_base = pi->buf;
 iov[0].iov_len = pi->buflen;

 msg->msg_name = pi->peer;
 msg->msg_namelen = pi->peerlen;
 msg->msg_iov = iov;
 msg->msg_iovlen = 1;
 msg->msg_control = cbuf;
 msg->msg_controllen = RECV_CBUF_SIZE;
 msg->msg_flags = 0;

 memset(cbuf, 0, RECV_CBUF_SIZE);

 const ssize_t len = recvmsg(pi->fd, msg, 0);

 if (len == -1 || len == 0)

  return (-1);

 if (msg->msg_flags & MSG_TRUNC) {

  snmpd_stats.silentDrops++;
  snmpd_stats.inTooLong++;
  return (-1);
 }

 pi->length = (size_t)len;

 return (0);
}
