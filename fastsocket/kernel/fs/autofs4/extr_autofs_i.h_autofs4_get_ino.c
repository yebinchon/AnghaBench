
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct autofs_sb_info {TYPE_3__* sb; } ;
struct TYPE_6__ {TYPE_2__* s_root; } ;
struct TYPE_5__ {TYPE_1__* d_inode; } ;
struct TYPE_4__ {int i_ino; } ;



__attribute__((used)) static inline u64 autofs4_get_ino(struct autofs_sb_info *sbi)
{
 return sbi->sb->s_root->d_inode->i_ino;
}
