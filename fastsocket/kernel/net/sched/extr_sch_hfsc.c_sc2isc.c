
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_service_curve {int m2; int d; int m1; } ;
struct internal_sc {void* ism2; void* sm2; void* sm1; int dx; int dy; void* ism1; } ;


 int d2dx (int ) ;
 void* m2ism (int ) ;
 void* m2sm (int ) ;
 int seg_x2y (int ,void*) ;

__attribute__((used)) static void
sc2isc(struct tc_service_curve *sc, struct internal_sc *isc)
{
 isc->sm1 = m2sm(sc->m1);
 isc->ism1 = m2ism(sc->m1);
 isc->dx = d2dx(sc->d);
 isc->dy = seg_x2y(isc->dx, isc->sm1);
 isc->sm2 = m2sm(sc->m2);
 isc->ism2 = m2ism(sc->m2);
}
