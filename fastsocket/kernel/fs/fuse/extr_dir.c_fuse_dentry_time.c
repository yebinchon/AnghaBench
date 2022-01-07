
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dentry {scalar_t__ d_fsdata; scalar_t__ d_time; } ;



__attribute__((used)) static u64 fuse_dentry_time(struct dentry *entry)
{
 return (u64) entry->d_time +
  ((u64) (unsigned long) entry->d_fsdata << 32);
}
