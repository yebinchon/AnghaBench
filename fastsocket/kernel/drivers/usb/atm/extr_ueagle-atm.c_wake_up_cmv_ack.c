
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uea_softc {int cmv_ack; int sync_q; } ;


 int BUG_ON (int) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void wake_up_cmv_ack(struct uea_softc *sc)
{
 BUG_ON(sc->cmv_ack);
 sc->cmv_ack = 1;
 wake_up(&sc->sync_q);
}
