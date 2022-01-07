
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int dummy; } ;


 scalar_t__ ULONG_MAX ;

__attribute__((used)) static inline unsigned long ino_from_blkno(struct super_block *sb,
        u64 blkno)
{
 return (unsigned long)(blkno & (u64)ULONG_MAX);
}
