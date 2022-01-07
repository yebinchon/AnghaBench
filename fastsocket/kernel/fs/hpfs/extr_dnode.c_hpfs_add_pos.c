
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct hpfs_inode_info {int ** i_rddir_off; } ;
typedef int loff_t ;


 int GFP_NOFS ;
 struct hpfs_inode_info* hpfs_i (struct inode*) ;
 int kfree (int **) ;
 int ** kmalloc (int,int ) ;
 int memcpy (int **,int **,int) ;
 int printk (char*) ;

void hpfs_add_pos(struct inode *inode, loff_t *pos)
{
 struct hpfs_inode_info *hpfs_inode = hpfs_i(inode);
 int i = 0;
 loff_t **ppos;

 if (hpfs_inode->i_rddir_off)
  for (; hpfs_inode->i_rddir_off[i]; i++)
   if (hpfs_inode->i_rddir_off[i] == pos) return;
 if (!(i&0x0f)) {
  if (!(ppos = kmalloc((i+0x11) * sizeof(loff_t*), GFP_NOFS))) {
   printk("HPFS: out of memory for position list\n");
   return;
  }
  if (hpfs_inode->i_rddir_off) {
   memcpy(ppos, hpfs_inode->i_rddir_off, i * sizeof(loff_t));
   kfree(hpfs_inode->i_rddir_off);
  }
  hpfs_inode->i_rddir_off = ppos;
 }
 hpfs_inode->i_rddir_off[i] = pos;
 hpfs_inode->i_rddir_off[i + 1] = ((void*)0);
}
