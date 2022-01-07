
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct src_mgr {int (* commit_write ) (struct src_mgr*) ;int (* src_disable ) (struct src_mgr*,struct src*) ;} ;
struct src {scalar_t__ mode; int multi; int * intlv; int * ops; int rsc; } ;


 scalar_t__ MEMRD ;
 scalar_t__ NUM_SRCMODES ;
 int rsc_uninit (int *) ;
 int stub1 (struct src_mgr*,struct src*) ;
 int stub2 (struct src_mgr*) ;

__attribute__((used)) static int src_rsc_uninit(struct src *src, struct src_mgr *mgr)
{
 int i, n;
 struct src *p;

 n = (MEMRD == src->mode) ? src->multi : 1;
 for (i = 0, p = src; i < n; i++, p++) {
  mgr->src_disable(mgr, p);
  rsc_uninit(&p->rsc);
  p->multi = 0;
  p->ops = ((void*)0);
  p->mode = NUM_SRCMODES;
  p->intlv = ((void*)0);
 }
 mgr->commit_write(mgr);

 return 0;
}
