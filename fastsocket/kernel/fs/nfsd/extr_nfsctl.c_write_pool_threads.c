
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t SIMPLE_TRANSACTION_LIMIT ;
 int get_int (char**,int*) ;
 int* kcalloc (int,int,int ) ;
 int kfree (int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfsd_get_nrthreads (int,int*) ;
 int nfsd_mutex ;
 int nfsd_nrpools () ;
 int nfsd_set_nrthreads (int,int*) ;
 int snprintf (char*,size_t,char*,int,char) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static ssize_t write_pool_threads(struct file *file, char *buf, size_t size)
{



 char *mesg = buf;
 int i;
 int rv;
 int len;
 int npools;
 int *nthreads;

 mutex_lock(&nfsd_mutex);
 npools = nfsd_nrpools();
 if (npools == 0) {





  mutex_unlock(&nfsd_mutex);
  strcpy(buf, "0\n");
  return strlen(buf);
 }

 nthreads = kcalloc(npools, sizeof(int), GFP_KERNEL);
 rv = -ENOMEM;
 if (nthreads == ((void*)0))
  goto out_free;

 if (size > 0) {
  for (i = 0; i < npools; i++) {
   rv = get_int(&mesg, &nthreads[i]);
   if (rv == -ENOENT)
    break;
   if (rv)
    goto out_free;
   rv = -EINVAL;
   if (nthreads[i] < 0)
    goto out_free;
  }
  rv = nfsd_set_nrthreads(i, nthreads);
  if (rv)
   goto out_free;
 }

 rv = nfsd_get_nrthreads(npools, nthreads);
 if (rv)
  goto out_free;

 mesg = buf;
 size = SIMPLE_TRANSACTION_LIMIT;
 for (i = 0; i < npools && size > 0; i++) {
  snprintf(mesg, size, "%d%c", nthreads[i], (i == npools-1 ? '\n' : ' '));
  len = strlen(mesg);
  size -= len;
  mesg += len;
 }
 rv = mesg - buf;
out_free:
 kfree(nthreads);
 mutex_unlock(&nfsd_mutex);
 return rv;
}
