
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_ADVISE_RDPLUS ;
 int set_bit (int ,int *) ;

__attribute__((used)) static
void nfs_advise_use_readdirplus(struct inode *dir)
{
 set_bit(NFS_INO_ADVISE_RDPLUS, &NFS_I(dir)->flags);
}
