
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxfs_direct {int d_reclen; } ;



__attribute__((used)) static inline struct vxfs_direct *
vxfs_next_entry(struct vxfs_direct *de)
{
 return ((struct vxfs_direct *)((char*)de + de->d_reclen));
}
