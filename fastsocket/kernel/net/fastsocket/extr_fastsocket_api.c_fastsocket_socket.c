
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int family; int type; int protocol; } ;
struct TYPE_4__ {TYPE_1__ socket_op; } ;
struct fsocket_ioctl_arg {TYPE_2__ op; } ;


 int AF_INET ;
 int DEBUG ;
 int DPRINTK (int ,char*,...) ;
 int INFO ;
 int SOCK_STREAM ;
 int SOCK_TYPE_MASK ;
 int fsocket_socket (int) ;
 int sys_socket (int,int,int) ;

__attribute__((used)) static int fastsocket_socket(struct fsocket_ioctl_arg *arg)
{
 int family, type, protocol, fd;

 DPRINTK(DEBUG,"Try to create fastsocket\n");

 family = arg->op.socket_op.family;
 type = arg->op.socket_op.type;
 protocol = arg->op.socket_op.protocol;

 if (( family == AF_INET ) &&
  ((type & SOCK_TYPE_MASK) == SOCK_STREAM )) {
  fd = fsocket_socket(type & ~SOCK_TYPE_MASK);
  DPRINTK(DEBUG,"Create fastsocket %d\n", fd);
  return fd;
 } else {
  fd = sys_socket(family, type, protocol);
  DPRINTK(INFO, "Create non fastsocket %d\n", fd);
  return fd;
 }
}
