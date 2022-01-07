
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct superblock_smack {int smk_sblock; scalar_t__ smk_initialized; int smk_hat; int smk_floor; int smk_default; int smk_root; } ;
struct super_block {struct superblock_smack* s_security; } ;
struct TYPE_4__ {int smk_known; } ;
struct TYPE_3__ {int smk_known; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct superblock_smack* kzalloc (int,int ) ;
 TYPE_2__ smack_known_floor ;
 TYPE_1__ smack_known_hat ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int smack_sb_alloc_security(struct super_block *sb)
{
 struct superblock_smack *sbsp;

 sbsp = kzalloc(sizeof(struct superblock_smack), GFP_KERNEL);

 if (sbsp == ((void*)0))
  return -ENOMEM;

 sbsp->smk_root = smack_known_floor.smk_known;
 sbsp->smk_default = smack_known_floor.smk_known;
 sbsp->smk_floor = smack_known_floor.smk_known;
 sbsp->smk_hat = smack_known_hat.smk_known;
 sbsp->smk_initialized = 0;
 spin_lock_init(&sbsp->smk_sblock);

 sb->s_security = sbsp;

 return 0;
}
