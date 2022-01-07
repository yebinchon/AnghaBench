
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dquot {int dq_free; } ;
struct TYPE_2__ {int free_dquots; } ;


 TYPE_1__ dqstats ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static inline void remove_free_dquot(struct dquot *dquot)
{
 if (list_empty(&dquot->dq_free))
  return;
 list_del_init(&dquot->dq_free);
 dqstats.free_dquots--;
}
