
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnode {int ea_offs; int acl_size_s; } ;
struct extended_attribute {int dummy; } ;



__attribute__((used)) static inline struct extended_attribute *fnode_ea(struct fnode *fnode)
{
 return (struct extended_attribute *)((char *)fnode + fnode->ea_offs + fnode->acl_size_s);
}
