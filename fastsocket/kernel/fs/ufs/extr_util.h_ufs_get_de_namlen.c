
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int d_namlen; } ;
struct TYPE_5__ {TYPE_1__ d_44; int d_namlen; } ;
struct ufs_dir_entry {TYPE_2__ d_u; } ;
struct super_block {int dummy; } ;
struct TYPE_6__ {int s_flags; } ;


 int UFS_DE_MASK ;
 int UFS_DE_OLD ;
 TYPE_3__* UFS_SB (struct super_block*) ;
 int fs16_to_cpu (struct super_block*,int ) ;

__attribute__((used)) static inline u16
ufs_get_de_namlen(struct super_block *sb, struct ufs_dir_entry *de)
{
 if ((UFS_SB(sb)->s_flags & UFS_DE_MASK) == UFS_DE_OLD)
  return fs16_to_cpu(sb, de->d_u.d_namlen);
 else
  return de->d_u.d_44.d_namlen;
}
