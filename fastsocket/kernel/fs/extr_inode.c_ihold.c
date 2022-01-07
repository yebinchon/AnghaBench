
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_count; } ;


 int WARN_ON (int) ;
 int atomic_inc_return (int *) ;

void ihold(struct inode *inode)
{
 WARN_ON(atomic_inc_return(&inode->i_count) < 2);
}
