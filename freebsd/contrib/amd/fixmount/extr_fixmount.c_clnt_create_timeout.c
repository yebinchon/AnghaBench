
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int voidp ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_family; } ;
struct hostent {scalar_t__ h_addr; } ;
typedef int host_addr ;
typedef int CLIENT ;


 int AF_INET ;
 int MOUNTPROG ;
 int MOUNTVERS ;
 int RPC_ANYSOCK ;
 int RPC_TIMEDOUT ;
 int SIGALRM ;
 int SOCK_DGRAM ;
 int STREQ (char*,int ) ;
 int before_rpc ;
 int * clnt_create (char*,int ,int ,char*) ;
 int clnt_pcreateerror (char*) ;
 int clnt_perrno (int ) ;
 int * clnttcp_create (struct sockaddr_in*,int ,int ,int*,int ,int ) ;
 int * clntudp_create (struct sockaddr_in*,int ,int ,struct timeval,int*) ;
 int create_timeout ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 struct hostent* gethostbyname (char*) ;
 int htonl (int) ;
 int localhost ;
 int memmove (int ,int ,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int privsock (int ) ;
 int quiet ;
 scalar_t__ setjmp (int ) ;
 int signal (int ,int ) ;
 int stderr ;
 int ualarm (scalar_t__,int ) ;

__attribute__((used)) static CLIENT *
clnt_create_timeout(char *host, struct timeval *tvp)
{
  CLIENT *clnt;
  struct sockaddr_in host_addr;
  struct hostent *hp;

  int s;


  if (setjmp(before_rpc)) {
    if (!quiet) {
      fprintf(stderr, "%s: ", host);
      clnt_perrno(RPC_TIMEDOUT);
      fprintf(stderr, "\n");
      fflush(stderr);
    }
    return ((void*)0);
  }
  signal(SIGALRM, create_timeout);
  ualarm(tvp->tv_sec * 1000000 + tvp->tv_usec, 0);




  if ((hp = gethostbyname(host)) == 0 && !STREQ(host, localhost)) {
    fprintf(stderr, "can't get address of %s\n", host);
    return ((void*)0);
  }
  memset(&host_addr, 0, sizeof(host_addr));

  host_addr.sin_family = AF_INET;
  if (hp) {
    memmove((voidp) &host_addr.sin_addr, (voidp) hp->h_addr,
     sizeof(host_addr.sin_addr));
  } else {

    host_addr.sin_addr.s_addr = htonl(0x7f000001);
  }







  s = RPC_ANYSOCK;
  clnt = clnttcp_create(&host_addr, MOUNTPROG, MOUNTVERS, &s, 0, 0);
  if (!clnt) {

    s = privsock(SOCK_DGRAM);
    clnt = clntudp_create(&host_addr, MOUNTPROG, MOUNTVERS, *tvp, &s);
  }


  if (!clnt) {
    ualarm(0, 0);
    if (!quiet) {
      clnt_pcreateerror(host);
      fflush(stderr);
    }
    return ((void*)0);
  }

  ualarm(0, 0);
  return clnt;
}
