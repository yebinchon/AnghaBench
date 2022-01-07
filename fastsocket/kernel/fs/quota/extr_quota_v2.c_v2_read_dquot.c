
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dquot {int dq_type; int dq_sb; } ;
struct TYPE_2__ {int dqi_priv; } ;


 int qtree_read_dquot (int ,struct dquot*) ;
 TYPE_1__* sb_dqinfo (int ,int ) ;

__attribute__((used)) static int v2_read_dquot(struct dquot *dquot)
{
 return qtree_read_dquot(sb_dqinfo(dquot->dq_sb, dquot->dq_type)->dqi_priv, dquot);
}
