
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int qsize_t ;


 int DQUOT_SPACE_RESERVE ;
 int __dquot_free_space (struct inode*,int ,int ) ;

void dquot_release_reserved_space(struct inode *inode, qsize_t number)
{
 __dquot_free_space(inode, number, DQUOT_SPACE_RESERVE);

}
