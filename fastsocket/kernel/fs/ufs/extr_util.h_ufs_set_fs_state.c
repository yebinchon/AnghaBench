
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {void* fs_state; } ;
struct TYPE_9__ {void* fs_state; } ;
struct TYPE_13__ {TYPE_4__ fs_44; TYPE_1__ fs_sun; } ;
struct ufs_super_block_third {TYPE_5__ fs_un2; int fs_postblformat; } ;
struct TYPE_10__ {void* fs_state; } ;
struct TYPE_11__ {TYPE_2__ fs_sunx86; } ;
struct TYPE_14__ {void* fs_state; } ;
struct TYPE_15__ {TYPE_6__ fs_sun; } ;
struct ufs_super_block_first {TYPE_3__ fs_u1; TYPE_7__ fs_u0; } ;
struct super_block {int dummy; } ;
typedef int s32 ;
struct TYPE_16__ {int s_flags; } ;


 int UFS_42POSTBLFMT ;
 TYPE_8__* UFS_SB (struct super_block*) ;

 int UFS_ST_MASK ;



 void* cpu_to_fs32 (struct super_block*,int ) ;
 int fs32_to_cpu (struct super_block*,int ) ;

__attribute__((used)) static inline void
ufs_set_fs_state(struct super_block *sb, struct ufs_super_block_first *usb1,
   struct ufs_super_block_third *usb3, s32 value)
{
 switch (UFS_SB(sb)->s_flags & UFS_ST_MASK) {
 case 129:
  if (fs32_to_cpu(sb, usb3->fs_postblformat) == UFS_42POSTBLFMT) {
   usb1->fs_u0.fs_sun.fs_state = cpu_to_fs32(sb, value);
   break;
  }

 case 130:
  usb3->fs_un2.fs_sun.fs_state = cpu_to_fs32(sb, value);
  break;
 case 128:
  usb1->fs_u1.fs_sunx86.fs_state = cpu_to_fs32(sb, value);
  break;
 case 131:
  usb3->fs_un2.fs_44.fs_state = cpu_to_fs32(sb, value);
  break;
 }
}
