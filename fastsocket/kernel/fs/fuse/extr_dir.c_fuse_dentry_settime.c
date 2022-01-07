
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dentry {int d_time; void* d_fsdata; } ;



__attribute__((used)) static void fuse_dentry_settime(struct dentry *entry, u64 time)
{
 entry->d_time = time;
 entry->d_fsdata = (void *) (unsigned long) (time >> 32);
}
