
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jfs_ea_list {int dummy; } ;
struct jfs_ea {int dummy; } ;
struct inode {int dummy; } ;
struct ea_buffer {scalar_t__ xattr; } ;
struct dentry {struct inode* d_inode; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int xattr_sem; } ;


 struct jfs_ea* END_EALIST (struct jfs_ea_list*) ;
 size_t ERANGE ;
 struct jfs_ea* FIRST_EA (struct jfs_ea_list*) ;
 TYPE_1__* JFS_IP (struct inode*) ;
 struct jfs_ea* NEXT_EA (struct jfs_ea*) ;
 scalar_t__ can_list (struct jfs_ea*) ;
 int copy_name (char*,struct jfs_ea*) ;
 int down_read (int *) ;
 int ea_get (struct inode*,struct ea_buffer*,int ) ;
 int ea_release (struct inode*,struct ea_buffer*) ;
 scalar_t__ name_size (struct jfs_ea*) ;
 int up_read (int *) ;

ssize_t jfs_listxattr(struct dentry * dentry, char *data, size_t buf_size)
{
 struct inode *inode = dentry->d_inode;
 char *buffer;
 ssize_t size = 0;
 int xattr_size;
 struct jfs_ea_list *ealist;
 struct jfs_ea *ea;
 struct ea_buffer ea_buf;

 down_read(&JFS_IP(inode)->xattr_sem);

 xattr_size = ea_get(inode, &ea_buf, 0);
 if (xattr_size < 0) {
  size = xattr_size;
  goto out;
 }

 if (xattr_size == 0)
  goto release;

 ealist = (struct jfs_ea_list *) ea_buf.xattr;


 for (ea = FIRST_EA(ealist); ea < END_EALIST(ealist); ea = NEXT_EA(ea)) {
  if (can_list(ea))
   size += name_size(ea) + 1;
 }

 if (!data)
  goto release;

 if (size > buf_size) {
  size = -ERANGE;
  goto release;
 }


 buffer = data;
 for (ea = FIRST_EA(ealist); ea < END_EALIST(ealist); ea = NEXT_EA(ea)) {
  if (can_list(ea)) {
   int namelen = copy_name(buffer, ea);
   buffer += namelen + 1;
  }
 }

      release:
 ea_release(inode, &ea_buf);
      out:
 up_read(&JFS_IP(inode)->xattr_sem);
 return size;
}
