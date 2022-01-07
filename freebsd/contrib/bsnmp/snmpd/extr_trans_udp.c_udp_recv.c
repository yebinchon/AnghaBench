
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct udp_port {int dstaddr; } ;
struct tport {int dummy; } ;
struct sockcred {int dummy; } ;
struct port_input {size_t length; scalar_t__ cred; int fd; int buflen; int * buf; int peerlen; int peer; } ;
struct msghdr {int msg_iovlen; char* msg_control; int msg_controllen; int msg_flags; struct iovec* msg_iov; int msg_namelen; int msg_name; } ;
struct iovec {int iov_len; int * iov_base; } ;
struct in_addr {int dummy; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;
typedef int ssize_t ;
typedef int embuf ;
typedef int cbuf ;
struct TYPE_2__ {int inTooLong; int silentDrops; } ;


 int CMGROUP_MAX ;
 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 struct cmsghdr* CMSG_NXTHDR (struct msghdr*,struct cmsghdr*) ;
 int CMSG_SPACE (int) ;
 scalar_t__ IPPROTO_IP ;
 scalar_t__ IP_RECVDSTADDR ;
 int MSG_TRUNC ;
 scalar_t__ SCM_CREDS ;
 int SOCKCREDSIZE (int ) ;
 scalar_t__ SOL_SOCKET ;
 int * buf_alloc (int ) ;
 int buf_size (int ) ;
 int check_priv_dgram (struct port_input*,struct sockcred*) ;
 int memcpy (int *,scalar_t__,int) ;
 int memset (char*,int ,int) ;
 int recvfrom (int ,int *,int,int ,int *,int *) ;
 int recvmsg (int ,struct msghdr*,int ) ;
 TYPE_1__ snmpd_stats ;

__attribute__((used)) static ssize_t
udp_recv(struct tport *tp, struct port_input *pi)
{
 u_char embuf[1000];
 char cbuf[CMSG_SPACE(SOCKCREDSIZE(CMGROUP_MAX)) +
     CMSG_SPACE(sizeof(struct in_addr))];
 struct udp_port *p = (struct udp_port *)tp;
 struct msghdr msg;
 struct iovec iov[1];
 ssize_t len;
 struct cmsghdr *cmsg;
 struct sockcred *cred = ((void*)0);

 if (pi->buf == ((void*)0)) {

  if ((pi->buf = buf_alloc(0)) == ((void*)0)) {


   (void)recvfrom(pi->fd, embuf, sizeof(embuf),
       0, ((void*)0), ((void*)0));

   return (-1);
  }
  pi->buflen = buf_size(0);
 }


 msg.msg_name = pi->peer;
 msg.msg_namelen = pi->peerlen;
 msg.msg_iov = iov;
 msg.msg_iovlen = 1;
 memset(cbuf, 0, sizeof(cbuf));
 msg.msg_control = cbuf;
 msg.msg_controllen = sizeof(cbuf);
 msg.msg_flags = 0;

 iov[0].iov_base = pi->buf;
 iov[0].iov_len = pi->buflen;

 len = recvmsg(pi->fd, &msg, 0);

 if (len == -1 || len == 0)

  return (-1);

 if (msg.msg_flags & MSG_TRUNC) {

  snmpd_stats.silentDrops++;
  snmpd_stats.inTooLong++;
  return (-1);
 }

 pi->length = (size_t)len;

 for (cmsg = CMSG_FIRSTHDR(&msg); cmsg != ((void*)0);
     cmsg = CMSG_NXTHDR(&msg, cmsg)) {
  if (cmsg->cmsg_level == IPPROTO_IP &&
      cmsg->cmsg_type == IP_RECVDSTADDR)
   memcpy(&p->dstaddr, CMSG_DATA(cmsg),
       sizeof(struct in_addr));
  if (cmsg->cmsg_level == SOL_SOCKET &&
      cmsg->cmsg_type == SCM_CREDS)
   cred = (struct sockcred *)(void *)CMSG_DATA(cmsg);
 }

 if (pi->cred)
  check_priv_dgram(pi, cred);

 return (0);
}
