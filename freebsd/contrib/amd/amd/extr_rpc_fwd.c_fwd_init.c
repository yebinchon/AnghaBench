
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;


 int AF_INET ;
 int FIONBIO ;
 int FNDELAY ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int SOCK_DGRAM ;
 int XLOG_ERROR ;
 scalar_t__ bind_resv_port (scalar_t__,int *) ;
 int errno ;
 scalar_t__ fcntl (scalar_t__,int ,int ) ;
 scalar_t__ fwd_sock ;
 scalar_t__ ioctl (scalar_t__,int ,int*) ;
 int plog (int ,char*,...) ;
 scalar_t__ socket (int ,int ,int ) ;
 int * t_errlist ;
 size_t t_errno ;
 scalar_t__ t_open (char*,int,int ) ;

int
fwd_init(void)
{
  fwd_sock = socket(AF_INET, SOCK_DGRAM, 0);
  if (fwd_sock < 0) {
    plog(XLOG_ERROR, "unable to create RPC forwarding socket: %m");
    return errno;
  }





  if (bind_resv_port(fwd_sock, (u_short *) ((void*)0)) < 0)
    plog(XLOG_ERROR, "can't bind privileged port (rpc_fwd)");

  if (fcntl(fwd_sock, F_SETFL, FNDELAY) < 0



    ) {
    plog(XLOG_ERROR, "Can't set non-block on forwarding socket: %m");
    return errno;
  }

  return 0;
}
