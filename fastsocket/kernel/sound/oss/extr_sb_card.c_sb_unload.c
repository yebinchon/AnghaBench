
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sb_card_config {int mpucnf; scalar_t__ mpu; int conf; } ;


 int kfree (struct sb_card_config*) ;
 int sb_dsp_unload (int *,int ) ;
 int unload_sbmpu (int *) ;

__attribute__((used)) static void sb_unload(struct sb_card_config *scc)
{
 sb_dsp_unload(&scc->conf, 0);
 if(scc->mpu)
  unload_sbmpu(&scc->mpucnf);
 kfree(scc);
}
