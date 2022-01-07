
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_4__ {size_t len; } ;
typedef TYPE_1__ befs_block_run ;
struct TYPE_5__ {size_t block_size; } ;


 TYPE_3__* BEFS_SB (struct super_block*) ;

__attribute__((used)) static inline size_t
befs_brun_size(struct super_block *sb, befs_block_run run)
{
 return BEFS_SB(sb)->block_size * run.len;
}
