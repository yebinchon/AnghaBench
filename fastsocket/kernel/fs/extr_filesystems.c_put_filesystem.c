
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_system_type {int owner; } ;


 int module_put (int ) ;

void put_filesystem(struct file_system_type *fs)
{
 module_put(fs->owner);
}
