
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_long ;
struct timeval {int dummy; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct sockaddr {int dummy; } ;
typedef int CLIENT ;


 int AF_INET ;
 int IPPROTO_TCP ;
 int MOUNTPROG ;
 int RPC_ANYSOCK ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int XLOG_ERROR ;
 scalar_t__ bind_resv_port (int,int *) ;
 int * clnttcp_create (struct sockaddr_in*,int ,int ,int*,int ,int ) ;
 int * clntudp_create (struct sockaddr_in*,int ,int ,struct timeval,int*) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int dlog (char*,scalar_t__) ;
 scalar_t__ htons (int ) ;
 int plog (int ,char*) ;
 int pmap_getport (struct sockaddr_in*,int ,int ,int ) ;
 int socket (int ,int ,int ) ;

CLIENT *
get_mount_client(char *unused_host, struct sockaddr_in *sin, struct timeval *tv, int *sock, u_long mnt_version)
{
  CLIENT *client;




  if ((*sock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) > 0) {



    if (bind_resv_port(*sock, (u_short *) ((void*)0)) < 0)
      plog(XLOG_ERROR, "can't bind privileged port (socket)");






    if ((sin->sin_port = htons(pmap_getport(sin, MOUNTPROG, mnt_version, IPPROTO_TCP))) != 0) {
      if (connect(*sock, (struct sockaddr *) sin, sizeof(*sin)) >= 0
   && ((client = clnttcp_create(sin, MOUNTPROG, mnt_version, sock, 0, 0)) != ((void*)0)))
 return client;
    }



    (void) close(*sock);
  }

  if ((*sock = socket(AF_INET, SOCK_DGRAM, 0)) < 0) {
    plog(XLOG_ERROR, "Can't create socket to connect to mountd: %m");
    *sock = RPC_ANYSOCK;
    return ((void*)0);
  }



  if (bind_resv_port(*sock, (u_short *) ((void*)0)) < 0)
    plog(XLOG_ERROR, "can't bind privileged port");




  sin->sin_port = 0;




  if ((client = clntudp_create(sin, MOUNTPROG, mnt_version, *tv, sock)) == ((void*)0)) {
    (void) close(*sock);
    *sock = RPC_ANYSOCK;
    return ((void*)0);
  }
  dlog("get_mount_client: Using udp, port %d", sin->sin_port);
  return client;
}
