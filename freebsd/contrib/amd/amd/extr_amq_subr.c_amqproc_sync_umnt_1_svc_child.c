
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ voidp ;
struct svc_req {int dummy; } ;
typedef int ssize_t ;
typedef int rv ;
typedef int buf ;
struct TYPE_7__ {int au_etype; } ;
typedef TYPE_1__ amq_sync_umnt ;
struct TYPE_8__ {scalar_t__* am_fd; } ;
typedef TYPE_2__ am_node ;


 int AMQ_UMNT_READ ;
 TYPE_2__* find_ap (char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int read (scalar_t__,TYPE_1__*,int) ;

amq_sync_umnt *
amqproc_sync_umnt_1_svc_child(voidp argp, struct svc_req *rqstp)
{
  static amq_sync_umnt rv;
  amq_sync_umnt buf;
  ssize_t n;

  am_node *mp = find_ap(*(char **) argp);

  memset(&rv, 0, sizeof(rv));
  rv.au_etype = AMQ_UMNT_READ;
  if (mp && mp->am_fd[0] >= 0) {
    n = read(mp->am_fd[0], &buf, sizeof(buf));
    if (n == sizeof(buf))
      rv = buf;
  }
  return &rv;
}
