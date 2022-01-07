
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_fh {scalar_t__ fh_locked; TYPE_2__* fh_dentry; } ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int i_mutex; } ;


 int fill_post_wcc (struct svc_fh*) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline void
fh_unlock(struct svc_fh *fhp)
{
 if (fhp->fh_locked) {
  fill_post_wcc(fhp);
  mutex_unlock(&fhp->fh_dentry->d_inode->i_mutex);
  fhp->fh_locked = 0;
 }
}
