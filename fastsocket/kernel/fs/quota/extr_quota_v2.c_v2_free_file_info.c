
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int dqi_priv; } ;


 int kfree (int ) ;
 TYPE_1__* sb_dqinfo (struct super_block*,int) ;

__attribute__((used)) static int v2_free_file_info(struct super_block *sb, int type)
{
 kfree(sb_dqinfo(sb, type)->dqi_priv);
 return 0;
}
