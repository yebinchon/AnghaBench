
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int voidp ;
struct svc_req {int dummy; } ;
typedef int amq_mount_stats ;


 int amd_stats ;

amq_mount_stats *
amqproc_stats_1_svc(voidp argp, struct svc_req *rqstp)
{
  return (amq_mount_stats *) ((void *)&amd_stats);
}
