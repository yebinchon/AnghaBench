
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvidia_par {scalar_t__ dmaCurrent; scalar_t__ dmaPut; } ;


 int WRITE_PUT (struct nvidia_par*,scalar_t__) ;

__attribute__((used)) static void NVDmaKickoff(struct nvidia_par *par)
{
 if (par->dmaCurrent != par->dmaPut) {
  par->dmaPut = par->dmaCurrent;
  WRITE_PUT(par, par->dmaPut);
 }
}
