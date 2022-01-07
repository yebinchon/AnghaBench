
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct handle {struct cache_detail* cd; } ;
struct file {int dummy; } ;
struct cache_detail {int owner; } ;


 int EACCES ;
 int ENOMEM ;
 struct handle* __seq_open_private (struct file*,int *,int) ;
 int cache_content_op ;
 int module_put (int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static int content_open(struct inode *inode, struct file *file,
   struct cache_detail *cd)
{
 struct handle *han;

 if (!cd || !try_module_get(cd->owner))
  return -EACCES;
 han = __seq_open_private(file, &cache_content_op, sizeof(*han));
 if (han == ((void*)0)) {
  module_put(cd->owner);
  return -ENOMEM;
 }

 han->cd = cd;
 return 0;
}
