
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct super_block {int dummy; } ;
typedef int __fs64 ;
typedef int __fs32 ;
struct TYPE_4__ {TYPE_1__* s_uspi; } ;
struct TYPE_3__ {scalar_t__ fs_magic; } ;


 scalar_t__ UFS2_MAGIC ;
 TYPE_2__* UFS_SB (struct super_block*) ;
 int cpu_to_fs32 (struct super_block*,int ) ;
 int cpu_to_fs64 (struct super_block*,int ) ;

__attribute__((used)) static inline void ufs_cpu_to_data_ptr(struct super_block *sb, void *p, u64 val)
{
 if (UFS_SB(sb)->s_uspi->fs_magic == UFS2_MAGIC)
  *(__fs64 *)p = cpu_to_fs64(sb, val);
 else
  *(__fs32 *)p = cpu_to_fs32(sb, val);
}
