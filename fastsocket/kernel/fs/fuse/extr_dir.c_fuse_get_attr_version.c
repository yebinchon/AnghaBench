
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fuse_conn {int lock; int attr_version; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

u64 fuse_get_attr_version(struct fuse_conn *fc)
{
 u64 curr_version;





 spin_lock(&fc->lock);
 curr_version = fc->attr_version;
 spin_unlock(&fc->lock);

 return curr_version;
}
