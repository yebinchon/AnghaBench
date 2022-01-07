
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int filldir_t ;


 int EIO ;

__attribute__((used)) static int bad_file_readdir(struct file *filp, void *dirent, filldir_t filldir)
{
 return -EIO;
}
