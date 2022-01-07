
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int voidp ;
struct svc_req {int dummy; } ;
typedef int rv ;
struct TYPE_4__ {int au_errno; int au_etype; } ;
typedef TYPE_1__ amq_sync_umnt ;


 int AMQ_UMNT_FORK ;
 int amqproc_umnt_1_svc (int ,struct svc_req*) ;
 int errno ;
 int memset (TYPE_1__*,int ,int) ;

amq_sync_umnt *
amqproc_sync_umnt_1_svc_async(voidp argp, struct svc_req *rqstp)
{
  static amq_sync_umnt rv;

  memset(&rv, 0, sizeof(rv));
  rv.au_etype = AMQ_UMNT_FORK;
  rv.au_errno = errno;

  amqproc_umnt_1_svc(argp, rqstp);

  return &rv;
}
