
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_system_type {int name; int fs_supers; scalar_t__ next; } ;


 int BUG_ON (int ) ;
 int EBUSY ;
 int INIT_LIST_HEAD (int *) ;
 int file_systems_lock ;
 struct file_system_type** find_filesystem (int ,int ) ;
 int strchr (int ,char) ;
 int strlen (int ) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int register_filesystem(struct file_system_type * fs)
{
 int res = 0;
 struct file_system_type ** p;

 BUG_ON(strchr(fs->name, '.'));
 if (fs->next)
  return -EBUSY;
 INIT_LIST_HEAD(&fs->fs_supers);
 write_lock(&file_systems_lock);
 p = find_filesystem(fs->name, strlen(fs->name));
 if (*p)
  res = -EBUSY;
 else
  *p = fs;
 write_unlock(&file_systems_lock);
 return res;
}
