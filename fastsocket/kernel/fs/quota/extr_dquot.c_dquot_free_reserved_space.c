
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dqb_rsvspace; } ;
struct dquot {TYPE_1__ dq_dqb; } ;
typedef scalar_t__ qsize_t ;


 int WARN_ON_ONCE (int) ;

__attribute__((used)) static inline
void dquot_free_reserved_space(struct dquot *dquot, qsize_t number)
{
 if (dquot->dq_dqb.dqb_rsvspace >= number)
  dquot->dq_dqb.dqb_rsvspace -= number;
 else {
  WARN_ON_ONCE(1);
  dquot->dq_dqb.dqb_rsvspace = 0;
 }
}
