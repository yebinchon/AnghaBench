
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int ACL_TYPE_DEFAULT ;
 size_t generic_acl_list (struct inode*,int *,int ,char*,size_t) ;
 int shmem_acl_ops ;

__attribute__((used)) static size_t
shmem_list_acl_default(struct inode *inode, char *list, size_t list_size,
         const char *name, size_t name_len)
{
 return generic_acl_list(inode, &shmem_acl_ops, ACL_TYPE_DEFAULT,
    list, list_size);
}
