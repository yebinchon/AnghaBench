
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uea_softc {int task; int work_q; int pageno; } ;
struct intr_pkt {int e4_bSwapPageNo; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static void uea_schedule_load_page_e4(struct uea_softc *sc, struct intr_pkt *intr)
{
 sc->pageno = intr->e4_bSwapPageNo;
 queue_work(sc->work_q, &sc->task);
}
