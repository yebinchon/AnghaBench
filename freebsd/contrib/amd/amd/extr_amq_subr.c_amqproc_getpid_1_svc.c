
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int voidp ;
struct svc_req {int dummy; } ;


 int getpid () ;

int *
amqproc_getpid_1_svc(voidp argp, struct svc_req *rqstp)
{
  static int res;

  res = getpid();
  return &res;
}
