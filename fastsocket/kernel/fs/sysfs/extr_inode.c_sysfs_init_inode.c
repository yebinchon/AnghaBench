
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sysfs_inode_attrs {int ia_secdata_len; scalar_t__ ia_secdata; int ia_iattr; } ;
struct TYPE_6__ {struct bin_attribute* bin_attr; } ;
struct TYPE_5__ {int subdirs; } ;
struct sysfs_dirent {TYPE_3__ s_bin_attr; TYPE_2__ s_dir; int s_mode; struct sysfs_inode_attrs* s_iattr; int s_ino; } ;
struct inode {int * i_op; int * i_fop; int i_size; int i_nlink; int i_mutex; int i_ino; TYPE_1__* i_mapping; int i_private; } ;
struct bin_attribute {int size; } ;
struct TYPE_4__ {int * backing_dev_info; int * a_ops; } ;


 int BUG () ;
 int PAGE_SIZE ;




 int bin_fops ;
 int lockdep_set_class (int *,int *) ;
 int security_inode_notifysecctx (struct inode*,scalar_t__,int ) ;
 int set_default_inode_attr (struct inode*,int ) ;
 int set_inode_attr (struct inode*,int *) ;
 int sysfs_aops ;
 int sysfs_backing_dev_info ;
 int sysfs_dir_inode_operations ;
 int sysfs_dir_operations ;
 int sysfs_file_operations ;
 int sysfs_get (struct sysfs_dirent*) ;
 int sysfs_inode_imutex_key ;
 int sysfs_inode_operations ;
 int sysfs_symlink_inode_operations ;
 int sysfs_type (struct sysfs_dirent*) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static void sysfs_init_inode(struct sysfs_dirent *sd, struct inode *inode)
{
 struct bin_attribute *bin_attr;
 struct sysfs_inode_attrs *iattrs;

 inode->i_private = sysfs_get(sd);
 inode->i_mapping->a_ops = &sysfs_aops;
 inode->i_mapping->backing_dev_info = &sysfs_backing_dev_info;
 inode->i_op = &sysfs_inode_operations;
 inode->i_ino = sd->s_ino;
 lockdep_set_class(&inode->i_mutex, &sysfs_inode_imutex_key);

 iattrs = sd->s_iattr;
 if (iattrs) {




  set_inode_attr(inode, &iattrs->ia_iattr);
  if (iattrs->ia_secdata)
   security_inode_notifysecctx(inode,
      iattrs->ia_secdata,
      iattrs->ia_secdata_len);
 } else
  set_default_inode_attr(inode, sd->s_mode);


 switch (sysfs_type(sd)) {
 case 131:
  inode->i_op = &sysfs_dir_inode_operations;
  inode->i_fop = &sysfs_dir_operations;
  inode->i_nlink = sd->s_dir.subdirs + 2;
  break;
 case 130:
  inode->i_size = PAGE_SIZE;
  inode->i_fop = &sysfs_file_operations;
  break;
 case 129:
  bin_attr = sd->s_bin_attr.bin_attr;
  inode->i_size = bin_attr->size;
  inode->i_fop = &bin_fops;
  break;
 case 128:
  inode->i_op = &sysfs_symlink_inode_operations;
  break;
 default:
  BUG();
 }

 unlock_new_inode(inode);
}
