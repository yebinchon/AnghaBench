
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int NFS_PORT ;
 int SIMPLE_TRANSACTION_LIMIT ;
 int get_int (char**,int*) ;
 int nfsd_nrthreads () ;
 int nfsd_svc (int ,int) ;
 int scnprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t write_threads(struct file *file, char *buf, size_t size)
{
 char *mesg = buf;
 int rv;
 if (size > 0) {
  int newthreads;
  rv = get_int(&mesg, &newthreads);
  if (rv)
   return rv;
  if (newthreads < 0)
   return -EINVAL;
  rv = nfsd_svc(NFS_PORT, newthreads);
  if (rv < 0)
   return rv;
 } else
  rv = nfsd_nrthreads();

 return scnprintf(buf, SIMPLE_TRANSACTION_LIMIT, "%d\n", rv);
}
