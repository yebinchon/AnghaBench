
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dqb_curspace; } ;
struct dquot {TYPE_1__ dq_dqb; } ;
typedef scalar_t__ qsize_t ;



__attribute__((used)) static inline void dquot_incr_space(struct dquot *dquot, qsize_t number)
{
 dquot->dq_dqb.dqb_curspace += number;
}
