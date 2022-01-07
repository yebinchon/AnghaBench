
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct dentry {int dummy; } ;


 unsigned long HASH_SHIFT ;
 int HASH_SIZE ;
 unsigned long L1_CACHE_BYTES ;

__attribute__((used)) static inline unsigned long hash(struct vfsmount *mnt, struct dentry *dentry)
{
 unsigned long tmp = ((unsigned long)mnt / L1_CACHE_BYTES);
 tmp += ((unsigned long)dentry / L1_CACHE_BYTES);
 tmp = tmp + (tmp >> HASH_SHIFT);
 return tmp & (HASH_SIZE - 1);
}
