
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int qsize_t ;


 int DQUOT_SPACE_RESERVE ;
 int DQUOT_SPACE_WARN ;
 int __dquot_alloc_space (struct inode*,int ,int) ;

int dquot_reserve_space(struct inode *inode, qsize_t number, int warn)
{
 int flags = DQUOT_SPACE_RESERVE;

 if (warn)
  flags |= DQUOT_SPACE_WARN;
 return __dquot_alloc_space(inode, number, flags);
}
