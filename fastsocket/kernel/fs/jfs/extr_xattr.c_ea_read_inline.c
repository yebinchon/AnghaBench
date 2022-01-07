
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jfs_inode_info {int i_inline_ea; int ea; } ;
struct jfs_ea_list {scalar_t__ size; } ;
struct inode {int dummy; } ;


 int EIO ;
 struct jfs_inode_info* JFS_IP (struct inode*) ;
 int le32_to_cpu (scalar_t__) ;
 int memcpy (struct jfs_ea_list*,int ,int) ;
 int sizeDXD (int *) ;

__attribute__((used)) static int ea_read_inline(struct inode *ip, struct jfs_ea_list *ealist)
{
 struct jfs_inode_info *ji = JFS_IP(ip);
 int ea_size = sizeDXD(&ji->ea);

 if (ea_size == 0) {
  ealist->size = 0;
  return 0;
 }


 if ((sizeDXD(&ji->ea) > sizeof (ji->i_inline_ea)))
  return -EIO;
 if (le32_to_cpu(((struct jfs_ea_list *) &ji->i_inline_ea)->size)
     != ea_size)
  return -EIO;

 memcpy(ealist, ji->i_inline_ea, ea_size);
 return 0;
}
