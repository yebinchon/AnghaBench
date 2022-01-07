
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 char* XATTR_SMACK_SUFFIX ;
 void* kstrdup (char*,int ) ;
 char* smk_of_inode (struct inode*) ;
 int strlen (char*) ;

__attribute__((used)) static int smack_inode_init_security(struct inode *inode, struct inode *dir,
         char **name, void **value, size_t *len)
{
 char *isp = smk_of_inode(inode);

 if (name) {
  *name = kstrdup(XATTR_SMACK_SUFFIX, GFP_KERNEL);
  if (*name == ((void*)0))
   return -ENOMEM;
 }

 if (value) {
  *value = kstrdup(isp, GFP_KERNEL);
  if (*value == ((void*)0))
   return -ENOMEM;
 }

 if (len)
  *len = strlen(isp) + 1;

 return 0;
}
