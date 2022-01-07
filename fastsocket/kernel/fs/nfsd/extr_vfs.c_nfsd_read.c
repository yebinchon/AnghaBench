
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct raparms {int p_set; size_t p_hindex; int p_count; int p_ra; } ;
struct raparm_hbucket {int pb_lock; } ;
struct kvec {int dummy; } ;
struct inode {int i_ino; TYPE_3__* i_sb; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {int f_ra; TYPE_2__ f_path; } ;
typedef int loff_t ;
typedef scalar_t__ __be32 ;
struct TYPE_6__ {int s_dev; } ;
struct TYPE_4__ {struct inode* d_inode; } ;


 int NFSD_MAY_READ ;
 int S_IFREG ;
 int nfsd_close (struct file*) ;
 struct raparms* nfsd_get_raparms (int ,int ) ;
 scalar_t__ nfsd_open (struct svc_rqst*,struct svc_fh*,int ,int ,struct file**) ;
 scalar_t__ nfsd_vfs_read (struct svc_rqst*,struct svc_fh*,struct file*,int ,struct kvec*,int,unsigned long*) ;
 struct raparm_hbucket* raparm_hash ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__be32 nfsd_read(struct svc_rqst *rqstp, struct svc_fh *fhp,
 loff_t offset, struct kvec *vec, int vlen, unsigned long *count)
{
 struct file *file;
 struct inode *inode;
 struct raparms *ra;
 __be32 err;

 err = nfsd_open(rqstp, fhp, S_IFREG, NFSD_MAY_READ, &file);
 if (err)
  return err;

 inode = file->f_path.dentry->d_inode;


 ra = nfsd_get_raparms(inode->i_sb->s_dev, inode->i_ino);

 if (ra && ra->p_set)
  file->f_ra = ra->p_ra;

 err = nfsd_vfs_read(rqstp, fhp, file, offset, vec, vlen, count);


 if (ra) {
  struct raparm_hbucket *rab = &raparm_hash[ra->p_hindex];
  spin_lock(&rab->pb_lock);
  ra->p_ra = file->f_ra;
  ra->p_set = 1;
  ra->p_count--;
  spin_unlock(&rab->pb_lock);
 }

 nfsd_close(file);
 return err;
}
