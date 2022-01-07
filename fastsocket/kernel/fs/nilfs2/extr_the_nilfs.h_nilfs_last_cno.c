
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_last_segment_lock; int ns_last_cno; } ;
typedef int __u64 ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline __u64 nilfs_last_cno(struct the_nilfs *nilfs)
{
 __u64 cno;

 spin_lock(&nilfs->ns_last_segment_lock);
 cno = nilfs->ns_last_cno;
 spin_unlock(&nilfs->ns_last_segment_lock);
 return cno;
}
