
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 char* inode_name (struct inode*,int) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;
 int strncat (char*,int ,int) ;

__attribute__((used)) static char *inode_dentry_name(struct inode *ino, struct dentry *dentry)
{
 char *file;
 int len;

 file = inode_name(ino, dentry->d_name.len + 1);
 if (file == ((void*)0))
  return ((void*)0);
 strcat(file, "/");
 len = strlen(file);
 strncat(file, dentry->d_name.name, dentry->d_name.len);
 file[len + dentry->d_name.len] = '\0';
 return file;
}
