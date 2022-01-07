
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jffs2_sb_info {int dummy; } ;
struct TYPE_2__ {int s_dirt; } ;


 TYPE_1__* OFNI_BS_2SFFJ (struct jffs2_sb_info*) ;

__attribute__((used)) static inline void jffs2_erase_pending_trigger(struct jffs2_sb_info *c)
{
 OFNI_BS_2SFFJ(c)->s_dirt = 1;
}
