
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int cap_inode_init_security(struct inode *inode, struct inode *dir,
       char **name, void **value, size_t *len)
{
 return -EOPNOTSUPP;
}
