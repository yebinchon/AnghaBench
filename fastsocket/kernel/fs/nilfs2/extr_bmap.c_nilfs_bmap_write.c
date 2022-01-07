
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nilfs_inode {int i_bmap; } ;
struct TYPE_3__ {int u_data; } ;
struct nilfs_bmap {int b_sem; int b_last_allocated_ptr; TYPE_2__* b_inode; TYPE_1__ b_u; } ;
typedef int __le64 ;
struct TYPE_4__ {scalar_t__ i_ino; } ;


 int NILFS_BMAP_NEW_PTR_INIT ;
 scalar_t__ NILFS_DAT_INO ;
 int NILFS_INODE_BMAP_SIZE ;
 int down_write (int *) ;
 int memcpy (int ,int ,int) ;
 int up_write (int *) ;

void nilfs_bmap_write(struct nilfs_bmap *bmap, struct nilfs_inode *raw_inode)
{
 down_write(&bmap->b_sem);
 memcpy(raw_inode->i_bmap, bmap->b_u.u_data,
        NILFS_INODE_BMAP_SIZE * sizeof(__le64));
 if (bmap->b_inode->i_ino == NILFS_DAT_INO)
  bmap->b_last_allocated_ptr = NILFS_BMAP_NEW_PTR_INIT;

 up_write(&bmap->b_sem);
}
