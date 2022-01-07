
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_common_args {int acdirmax; int acdirmin; int acregmax; int acregmin; int retrans; int timeo; int wsize; int rsize; int flags; } ;


 int XLOG_DEBUG ;
 int plog (int ,char*,int ) ;

__attribute__((used)) static void
print_nfs_common_args(const struct nfs_common_args *a)
{
  plog(XLOG_DEBUG, "NA->flags = 0x%lx", a->flags);

  plog(XLOG_DEBUG, "NA->rsize = %lu", a->rsize);
  plog(XLOG_DEBUG, "NA->wsize = %lu", a->wsize);
  plog(XLOG_DEBUG, "NA->timeo = %lu", a->timeo);
  plog(XLOG_DEBUG, "NA->retrans = %lu", a->retrans);







}
