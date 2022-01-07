
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_4__ {TYPE_1__* info; } ;
struct TYPE_3__ {int dqi_flags; } ;


 int DQF_INFO_DIRTY_B ;
 TYPE_2__* sb_dqopt (struct super_block*) ;
 int set_bit (int ,int *) ;

void mark_info_dirty(struct super_block *sb, int type)
{
 set_bit(DQF_INFO_DIRTY_B, &sb_dqopt(sb)->info[type].dqi_flags);
}
