
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct file_lock {int dummy; } ;
struct file {int dummy; } ;


 int NFSD_MAY_READ ;
 int S_IFREG ;
 int nfsd_close (struct file*) ;
 int nfsd_open (struct svc_rqst*,struct svc_fh*,int ,int ,struct file**) ;
 int vfs_test_lock (struct file*,struct file_lock*) ;

__attribute__((used)) static int nfsd_test_lock(struct svc_rqst *rqstp, struct svc_fh *fhp, struct file_lock *lock)
{
 struct file *file;
 int err;

 err = nfsd_open(rqstp, fhp, S_IFREG, NFSD_MAY_READ, &file);
 if (err)
  return err;
 err = vfs_test_lock(file, lock);
 nfsd_close(file);
 return err;
}
