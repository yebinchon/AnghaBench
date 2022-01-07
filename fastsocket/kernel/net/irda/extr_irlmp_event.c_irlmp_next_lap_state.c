
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lap_cb {int lap_state; } ;
typedef int IRLMP_STATE ;



__attribute__((used)) static inline void irlmp_next_lap_state(struct lap_cb *self,
     IRLMP_STATE state)
{



 self->lap_state = state;
}
