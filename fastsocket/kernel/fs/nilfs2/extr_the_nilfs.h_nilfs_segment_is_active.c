
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {scalar_t__ ns_segnum; scalar_t__ ns_nextnum; } ;
typedef scalar_t__ __u64 ;



__attribute__((used)) static inline int nilfs_segment_is_active(struct the_nilfs *nilfs, __u64 n)
{
 return n == nilfs->ns_segnum || n == nilfs->ns_nextnum;
}
