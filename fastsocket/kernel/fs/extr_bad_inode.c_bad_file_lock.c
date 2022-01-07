
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int dummy; } ;
struct file {int dummy; } ;


 int EIO ;

__attribute__((used)) static int bad_file_lock(struct file *file, int cmd, struct file_lock *fl)
{
 return -EIO;
}
