
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsp_spos_instance {int nscb; int scb_highest_frag_index; TYPE_1__* scbs; } ;
struct TYPE_2__ {scalar_t__ deleted; } ;



__attribute__((used)) static int find_free_scb_index (struct dsp_spos_instance * ins)
{
 int index = ins->nscb, i;

 for (i = ins->scb_highest_frag_index; i < ins->nscb; ++i) {
  if (ins->scbs[i].deleted) {
   index = i;
   break;
  }
 }

 return index;
}
