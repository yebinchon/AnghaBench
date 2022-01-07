
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {TYPE_3__* i_mapping; } ;
struct TYPE_7__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
typedef int loff_t ;
struct TYPE_9__ {scalar_t__ time; int clientCanCacheRead; } ;
struct TYPE_8__ {scalar_t__ nrpages; } ;
struct TYPE_6__ {struct inode* d_inode; } ;


 TYPE_5__* CIFS_I (struct inode*) ;
 int SEEK_END ;
 int cifs_revalidate_file_attr (struct file*) ;
 int filemap_fdatawait (TYPE_3__*) ;
 int generic_file_llseek_unlocked (struct file*,int,int) ;
 int mapping_set_error (TYPE_3__*,int) ;

__attribute__((used)) static loff_t cifs_llseek(struct file *file, loff_t offset, int origin)
{

 if (origin == SEEK_END) {
  int rc;
  struct inode *inode = file->f_path.dentry->d_inode;





  if (!CIFS_I(inode)->clientCanCacheRead && inode->i_mapping &&
      inode->i_mapping->nrpages != 0) {
   rc = filemap_fdatawait(inode->i_mapping);
   if (rc) {
    mapping_set_error(inode->i_mapping, rc);
    return rc;
   }
  }





  CIFS_I(inode)->time = 0;

  rc = cifs_revalidate_file_attr(file);
  if (rc < 0)
   return (loff_t)rc;
 }
 return generic_file_llseek_unlocked(file, offset, origin);
}
