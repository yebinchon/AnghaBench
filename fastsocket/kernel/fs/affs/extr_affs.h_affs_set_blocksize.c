
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int sb_set_blocksize (struct super_block*,int) ;

__attribute__((used)) static inline void
affs_set_blocksize(struct super_block *sb, int size)
{
 sb_set_blocksize(sb, size);
}
