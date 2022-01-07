
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int dummy; } ;


 int GFP_KERNEL ;
 int filelock_cache ;
 struct file_lock* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static struct file_lock *locks_alloc_lock(void)
{
 return kmem_cache_alloc(filelock_cache, GFP_KERNEL);
}
