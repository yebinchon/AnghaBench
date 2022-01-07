
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ sv_nrthreads; } ;


 int EBUSY ;
 int NFSSVC_MAXBLKSIZE ;
 int SIMPLE_TRANSACTION_LIMIT ;
 int get_int (char**,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfsd_max_blksize ;
 int nfsd_mutex ;
 TYPE_1__* nfsd_serv ;
 int scnprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t write_maxblksize(struct file *file, char *buf, size_t size)
{
 char *mesg = buf;
 if (size > 0) {
  int bsize;
  int rv = get_int(&mesg, &bsize);
  if (rv)
   return rv;



  if (bsize < 1024)
   bsize = 1024;
  if (bsize > NFSSVC_MAXBLKSIZE)
   bsize = NFSSVC_MAXBLKSIZE;
  bsize &= ~(1024-1);
  mutex_lock(&nfsd_mutex);
  if (nfsd_serv && nfsd_serv->sv_nrthreads) {
   mutex_unlock(&nfsd_mutex);
   return -EBUSY;
  }
  nfsd_max_blksize = bsize;
  mutex_unlock(&nfsd_mutex);
 }

 return scnprintf(buf, SIMPLE_TRANSACTION_LIMIT, "%d\n",
       nfsd_max_blksize);
}
