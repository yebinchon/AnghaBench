
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct inode {int i_ino; int i_generation; } ;
struct dentry {int d_lock; TYPE_1__* d_parent; struct inode* d_inode; } ;
typedef int __u32 ;
struct TYPE_4__ {int i_pos; int i_logstart; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 TYPE_2__* MSDOS_I (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
fat_encode_fh(struct dentry *de, __u32 *fh, int *lenp, int connectable)
{
 int len = *lenp;
 struct inode *inode = de->d_inode;
 u32 ipos_h, ipos_m, ipos_l;

 if (len < 5)
  return 255;

 ipos_h = MSDOS_I(inode)->i_pos >> 8;
 ipos_m = (MSDOS_I(inode)->i_pos & 0xf0) << 24;
 ipos_l = (MSDOS_I(inode)->i_pos & 0x0f) << 28;
 *lenp = 5;
 fh[0] = inode->i_ino;
 fh[1] = inode->i_generation;
 fh[2] = ipos_h;
 fh[3] = ipos_m | MSDOS_I(inode)->i_logstart;
 spin_lock(&de->d_lock);
 fh[4] = ipos_l | MSDOS_I(de->d_parent->d_inode)->i_logstart;
 spin_unlock(&de->d_lock);
 return 3;
}
