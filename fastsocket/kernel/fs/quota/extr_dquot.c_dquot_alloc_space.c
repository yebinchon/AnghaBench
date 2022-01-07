
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int qsize_t ;


 int __dquot_alloc_space (struct inode*,int ,int) ;

int dquot_alloc_space(struct inode *inode, qsize_t number, int flags)
{
 return __dquot_alloc_space(inode, number, flags);
}
