
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_2__* i_mapping; } ;
typedef int sector_t ;
struct TYPE_4__ {TYPE_1__* a_ops; } ;
struct TYPE_3__ {int (* bmap ) (TYPE_2__*,int ) ;} ;


 int stub1 (TYPE_2__*,int ) ;

sector_t bmap(struct inode *inode, sector_t block)
{
 sector_t res = 0;
 if (inode->i_mapping->a_ops->bmap)
  res = inode->i_mapping->a_ops->bmap(inode->i_mapping, block);
 return res;
}
