
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int s_ino; } ;
struct sysfs_addrm_cxt {struct inode* parent_inode; struct sysfs_dirent* parent_sd; } ;
struct inode {int i_state; int i_mutex; } ;


 int I_NEW ;
 int WARN_ON (int) ;
 struct inode* ilookup5 (int ,int ,int ,struct sysfs_dirent*) ;
 int memset (struct sysfs_addrm_cxt*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_ilookup_test ;
 int sysfs_mutex ;
 int sysfs_sb ;

void sysfs_addrm_start(struct sysfs_addrm_cxt *acxt,
         struct sysfs_dirent *parent_sd)
{
 struct inode *inode;

 memset(acxt, 0, sizeof(*acxt));
 acxt->parent_sd = parent_sd;





 mutex_lock(&sysfs_mutex);

 inode = ilookup5(sysfs_sb, parent_sd->s_ino, sysfs_ilookup_test,
    parent_sd);
 if (inode) {
  WARN_ON(inode->i_state & I_NEW);


  acxt->parent_inode = inode;





  if (!mutex_trylock(&inode->i_mutex)) {
   mutex_unlock(&sysfs_mutex);
   mutex_lock(&inode->i_mutex);
   mutex_lock(&sysfs_mutex);
  }
 }
}
