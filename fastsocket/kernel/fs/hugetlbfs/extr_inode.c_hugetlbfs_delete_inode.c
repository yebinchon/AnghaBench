
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int clear_inode (struct inode*) ;
 int truncate_hugepages (struct inode*,int ) ;

__attribute__((used)) static void hugetlbfs_delete_inode(struct inode *inode)
{
 truncate_hugepages(inode, 0);
 clear_inode(inode);
}
