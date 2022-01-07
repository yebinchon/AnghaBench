
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int voidp ;
struct svc_req {int dummy; } ;


 int amqproc_umnt_1_svc (int ,struct svc_req*) ;

int *
amqproc_sync_umnt_1_svc_parent(voidp argp, struct svc_req *rqstp)
{
  amqproc_umnt_1_svc(argp, rqstp);
  return ((void*)0);
}
