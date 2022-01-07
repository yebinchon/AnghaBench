
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_system_type {int owner; } ;


 int __module_get (int ) ;

void get_filesystem(struct file_system_type *fs)
{
 __module_get(fs->owner);
}
