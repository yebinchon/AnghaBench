
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dq_dirty; int dq_flags; } ;


 int DQ_MOD_B ;
 int list_del_init (int *) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static inline int clear_dquot_dirty(struct dquot *dquot)
{
 if (!test_and_clear_bit(DQ_MOD_B, &dquot->dq_flags))
  return 0;
 list_del_init(&dquot->dq_dirty);
 return 1;
}
