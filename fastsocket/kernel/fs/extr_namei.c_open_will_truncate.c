
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;


 int O_TRUNC ;
 scalar_t__ special_file (int ) ;

__attribute__((used)) static int open_will_truncate(int flag, struct inode *inode)
{




 if (special_file(inode->i_mode))
  return 0;
 return (flag & O_TRUNC);
}
