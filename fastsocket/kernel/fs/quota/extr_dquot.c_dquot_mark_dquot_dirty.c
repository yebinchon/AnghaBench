
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dquot {size_t dq_type; int dq_sb; int dq_dirty; int dq_flags; } ;
struct TYPE_4__ {TYPE_1__* info; } ;
struct TYPE_3__ {int dqi_dirty_list; } ;


 int DQ_MOD_B ;
 int dq_list_lock ;
 int list_add (int *,int *) ;
 TYPE_2__* sb_dqopt (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_set_bit (int ,int *) ;

int dquot_mark_dquot_dirty(struct dquot *dquot)
{
 spin_lock(&dq_list_lock);
 if (!test_and_set_bit(DQ_MOD_B, &dquot->dq_flags))
  list_add(&dquot->dq_dirty, &sb_dqopt(dquot->dq_sb)->
    info[dquot->dq_type].dqi_dirty_list);
 spin_unlock(&dq_list_lock);
 return 0;
}
