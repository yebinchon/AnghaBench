
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int val ;
struct socket {TYPE_3__* sk; TYPE_2__* ops; } ;
struct sockaddr_in6 {unsigned short sin6_port; } ;
struct sockaddr_in {unsigned short sin_port; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int ss_family; } ;
struct TCP_Server_Info {scalar_t__ tcp_nodelay; scalar_t__ noautotune; struct socket* ssocket; TYPE_1__ dstaddr; } ;
struct TYPE_6__ {int sk_rcvtimeo; int sk_sndtimeo; int sk_sndbuf; int sk_rcvbuf; int sk_allocation; } ;
struct TYPE_5__ {int (* connect ) (struct socket*,struct sockaddr*,int,int ) ;} ;


 int AF_INET ;
 int AF_INET6 ;
 int GFP_NOFS ;
 int HZ ;
 int IPPROTO_TCP ;
 int RFC1001_PORT ;
 int SOCK_STREAM ;
 int SOL_TCP ;
 int TCP_NODELAY ;
 int bind_socket (struct TCP_Server_Info*) ;
 int cERROR (int,char*,int) ;
 int cFYI (int,char*,...) ;
 int cifs_reclassify_socket4 (struct socket*) ;
 int cifs_reclassify_socket6 (struct socket*) ;
 unsigned short htons (int ) ;
 int ip_rfc1001_connect (struct TCP_Server_Info*) ;
 int kernel_setsockopt (struct socket*,int ,int ,char*,int) ;
 int sock_create_kern (int,int ,int ,struct socket**) ;
 int sock_release (struct socket*) ;
 int stub1 (struct socket*,struct sockaddr*,int,int ) ;

__attribute__((used)) static int
generic_ip_connect(struct TCP_Server_Info *server)
{
 int rc = 0;
 unsigned short int sport;
 int slen, sfamily;
 struct socket *socket = server->ssocket;
 struct sockaddr *saddr;

 saddr = (struct sockaddr *) &server->dstaddr;

 if (server->dstaddr.ss_family == AF_INET6) {
  sport = ((struct sockaddr_in6 *) saddr)->sin6_port;
  slen = sizeof(struct sockaddr_in6);
  sfamily = AF_INET6;
 } else {
  sport = ((struct sockaddr_in *) saddr)->sin_port;
  slen = sizeof(struct sockaddr_in);
  sfamily = AF_INET;
 }

 if (socket == ((void*)0)) {
  rc = sock_create_kern(sfamily, SOCK_STREAM,
          IPPROTO_TCP, &socket);
  if (rc < 0) {
   cERROR(1, "Error %d creating socket", rc);
   server->ssocket = ((void*)0);
   return rc;
  }


  cFYI(1, "Socket created");
  server->ssocket = socket;
  socket->sk->sk_allocation = GFP_NOFS;
  if (sfamily == AF_INET6)
   cifs_reclassify_socket6(socket);
  else
   cifs_reclassify_socket4(socket);
 }

 rc = bind_socket(server);
 if (rc < 0)
  return rc;

 rc = socket->ops->connect(socket, saddr, slen, 0);
 if (rc < 0) {
  cFYI(1, "Error %d connecting to server", rc);
  sock_release(socket);
  server->ssocket = ((void*)0);
  return rc;
 }






 socket->sk->sk_rcvtimeo = 7 * HZ;
 socket->sk->sk_sndtimeo = 5 * HZ;


 if (server->noautotune) {
  if (socket->sk->sk_sndbuf < (200 * 1024))
   socket->sk->sk_sndbuf = 200 * 1024;
  if (socket->sk->sk_rcvbuf < (140 * 1024))
   socket->sk->sk_rcvbuf = 140 * 1024;
 }

 if (server->tcp_nodelay) {
  int val = 1;
  rc = kernel_setsockopt(socket, SOL_TCP, TCP_NODELAY,
    (char *)&val, sizeof(val));
  if (rc)
   cFYI(1, "set TCP_NODELAY socket option error %d", rc);
 }

  cFYI(1, "sndbuf %d rcvbuf %d rcvtimeo 0x%lx",
   socket->sk->sk_sndbuf,
   socket->sk->sk_rcvbuf, socket->sk->sk_rcvtimeo);

 if (sport == htons(RFC1001_PORT))
  rc = ip_rfc1001_connect(server);

 return rc;
}
