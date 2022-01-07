
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int hpfs_creation_de; } ;


 TYPE_1__* hpfs_sb (struct super_block*) ;
 int printk (char*) ;
 int up (int *) ;

void hpfs_unlock_creation(struct super_block *s)
{



 up(&hpfs_sb(s)->hpfs_creation_de);
}
