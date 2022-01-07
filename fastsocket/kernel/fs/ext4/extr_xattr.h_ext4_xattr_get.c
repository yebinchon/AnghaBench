
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int
ext4_xattr_get(struct inode *inode, int name_index, const char *name,
        void *buffer, size_t size, int flags)
{
 return -EOPNOTSUPP;
}
