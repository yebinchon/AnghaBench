
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
typedef int __u64 ;
struct TYPE_4__ {TYPE_1__* mi_nilfs; } ;
struct TYPE_3__ {int ns_cno; } ;


 TYPE_2__* NILFS_MDT (struct inode*) ;

__attribute__((used)) static inline __u64 nilfs_mdt_cno(struct inode *inode)
{
 return NILFS_MDT(inode)->mi_nilfs->ns_cno;
}
