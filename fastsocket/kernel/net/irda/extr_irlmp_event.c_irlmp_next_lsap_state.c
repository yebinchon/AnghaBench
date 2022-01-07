
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lsap_cb {int lsap_state; } ;
typedef int LSAP_STATE ;



__attribute__((used)) static inline void irlmp_next_lsap_state(struct lsap_cb *self,
      LSAP_STATE state)
{




 self->lsap_state = state;
}
