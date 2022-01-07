
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * a_ops; } ;
struct inode {int i_mode; TYPE_1__ i_data; TYPE_1__* i_mapping; int * i_op; int * i_fop; } ;
struct coda_vattr {int va_rdev; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int coda_dir_inode_operations ;
 int coda_dir_operations ;
 int coda_file_inode_operations ;
 int coda_file_operations ;
 int coda_symlink_aops ;
 int coda_symlink_inode_operations ;
 int coda_vattr_to_iattr (struct inode*,struct coda_vattr*) ;
 int huge_decode_dev (int ) ;
 int init_special_inode (struct inode*,int ,int ) ;

__attribute__((used)) static void coda_fill_inode(struct inode *inode, struct coda_vattr *attr)
{
        coda_vattr_to_iattr(inode, attr);

        if (S_ISREG(inode->i_mode)) {
                inode->i_op = &coda_file_inode_operations;
                inode->i_fop = &coda_file_operations;
        } else if (S_ISDIR(inode->i_mode)) {
                inode->i_op = &coda_dir_inode_operations;
                inode->i_fop = &coda_dir_operations;
        } else if (S_ISLNK(inode->i_mode)) {
  inode->i_op = &coda_symlink_inode_operations;
  inode->i_data.a_ops = &coda_symlink_aops;
  inode->i_mapping = &inode->i_data;
 } else
                init_special_inode(inode, inode->i_mode, huge_decode_dev(attr->va_rdev));
}
