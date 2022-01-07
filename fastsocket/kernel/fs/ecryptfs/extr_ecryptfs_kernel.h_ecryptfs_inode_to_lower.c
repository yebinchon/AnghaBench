
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* wii_inode; } ;


 TYPE_1__* ecryptfs_inode_to_private (struct inode*) ;

__attribute__((used)) static inline struct inode *ecryptfs_inode_to_lower(struct inode *inode)
{
 return ecryptfs_inode_to_private(inode)->wii_inode;
}
