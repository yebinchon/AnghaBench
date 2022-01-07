
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int handle_t ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int
ext3_xattr_set_handle(handle_t *handle, struct inode *inode, int name_index,
        const char *name, const void *value, size_t size, int flags)
{
 return -EOPNOTSUPP;
}
