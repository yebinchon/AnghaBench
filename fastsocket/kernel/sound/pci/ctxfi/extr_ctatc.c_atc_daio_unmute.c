
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct daio_mgr {int (* commit_write ) (struct daio_mgr*) ;int (* daio_disable ) (struct daio_mgr*,int ) ;int (* daio_enable ) (struct daio_mgr*,int ) ;} ;
struct ct_atc {int * daios; struct daio_mgr** rsc_mgrs; } ;


 size_t DAIO ;
 int stub1 (struct daio_mgr*,int ) ;
 int stub2 (struct daio_mgr*,int ) ;
 int stub3 (struct daio_mgr*) ;

__attribute__((used)) static int atc_daio_unmute(struct ct_atc *atc, unsigned char state, int type)
{
 struct daio_mgr *daio_mgr = atc->rsc_mgrs[DAIO];

 if (state)
  daio_mgr->daio_enable(daio_mgr, atc->daios[type]);
 else
  daio_mgr->daio_disable(daio_mgr, atc->daios[type]);

 daio_mgr->commit_write(daio_mgr);

 return 0;
}
