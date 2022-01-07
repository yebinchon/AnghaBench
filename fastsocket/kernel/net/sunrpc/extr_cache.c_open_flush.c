
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
struct cache_detail {int owner; } ;


 int EACCES ;
 int nonseekable_open (struct inode*,struct file*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int open_flush(struct inode *inode, struct file *file,
   struct cache_detail *cd)
{
 if (!cd || !try_module_get(cd->owner))
  return -EACCES;
 return nonseekable_open(inode, file);
}
