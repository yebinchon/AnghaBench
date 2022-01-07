
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dirtied_when; } ;


 int jiffies ;
 int time_after (int ,unsigned long) ;
 scalar_t__ time_before_eq (int ,int ) ;

__attribute__((used)) static bool inode_dirtied_after(struct inode *inode, unsigned long t)
{
 bool ret = time_after(inode->dirtied_when, t);







 ret = ret && time_before_eq(inode->dirtied_when, jiffies);

 return ret;
}
