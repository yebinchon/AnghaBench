
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct inode {int i_mode; } ;


 int __mnt_want_write (struct vfsmount*) ;
 int get_write_access (struct inode*) ;
 int put_write_access (struct inode*) ;
 int special_file (int ) ;

__attribute__((used)) static inline int __get_file_write_access(struct inode *inode,
       struct vfsmount *mnt)
{
 int error;
 error = get_write_access(inode);
 if (error)
  return error;





 if (!special_file(inode->i_mode)) {



  error = __mnt_want_write(mnt);
  if (error)
   put_write_access(inode);
 }
 return error;
}
