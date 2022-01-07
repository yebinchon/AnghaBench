
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dq_flags; } ;


 int DQ_MOD_B ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int dquot_dirty(struct dquot *dquot)
{
 return test_bit(DQ_MOD_B, &dquot->dq_flags);
}
