
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int cache_change_attribute; } ;


 TYPE_1__* NFS_I (struct inode*) ;

void nfs_force_lookup_revalidate(struct inode *dir)
{
 NFS_I(dir)->cache_change_attribute++;
}
