
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int d_type; } ;
struct TYPE_5__ {TYPE_1__ d_44; } ;
struct ufs_dir_entry {TYPE_2__ d_u; } ;
struct super_block {int dummy; } ;
struct TYPE_6__ {int s_flags; } ;


 int DT_BLK ;
 int DT_CHR ;
 int DT_DIR ;
 int DT_FIFO ;
 int DT_LNK ;
 int DT_REG ;
 int DT_SOCK ;
 int DT_UNKNOWN ;





 int S_IFMT ;


 int UFS_DE_44BSD ;
 int UFS_DE_MASK ;
 TYPE_3__* UFS_SB (struct super_block*) ;

__attribute__((used)) static inline void
ufs_set_de_type(struct super_block *sb, struct ufs_dir_entry *de, int mode)
{
 if ((UFS_SB(sb)->s_flags & UFS_DE_MASK) != UFS_DE_44BSD)
  return;




 switch (mode & S_IFMT) {
 case 128:
  de->d_u.d_44.d_type = DT_SOCK;
  break;
 case 130:
  de->d_u.d_44.d_type = DT_LNK;
  break;
 case 129:
  de->d_u.d_44.d_type = DT_REG;
  break;
 case 134:
  de->d_u.d_44.d_type = DT_BLK;
  break;
 case 132:
  de->d_u.d_44.d_type = DT_DIR;
  break;
 case 133:
  de->d_u.d_44.d_type = DT_CHR;
  break;
 case 131:
  de->d_u.d_44.d_type = DT_FIFO;
  break;
 default:
  de->d_u.d_44.d_type = DT_UNKNOWN;
 }
}
