
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fskdcnt; int fsksize; int* fskdata; } ;
typedef TYPE_1__ IXJ ;



__attribute__((used)) static void ixj_pad_fsk(IXJ *j, int pad)
{
 int cnt;

 for (cnt = 0; cnt < pad; cnt++) {
  if(j->fskdcnt < (j->fsksize - 1))
   j->fskdata[j->fskdcnt++] = 0x0000;
 }
 for (cnt = 0; cnt < 720; cnt++) {
  if(j->fskdcnt < (j->fsksize - 1))
   j->fskdata[j->fskdcnt++] = 0x0000;
 }
}
