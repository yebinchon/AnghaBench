
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int voidp ;
struct svc_req {int dummy; } ;
typedef int amq_string ;


 int get_version_string () ;

amq_string *
amqproc_getvers_1_svc(voidp argp, struct svc_req *rqstp)
{
  static amq_string res;

  res = get_version_string();
  return &res;
}
