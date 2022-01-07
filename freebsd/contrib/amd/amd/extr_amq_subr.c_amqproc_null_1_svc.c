
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int voidp ;
struct svc_req {int dummy; } ;



voidp
amqproc_null_1_svc(voidp argp, struct svc_req *rqstp)
{
  static char res;

  return (voidp) &res;
}
