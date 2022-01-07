
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvidia_par {int paneltweak; int Chipset; } ;
struct _riva_hw_state {int bpp; } ;



__attribute__((used)) static int nvidia_panel_tweak(struct nvidia_par *par,
         struct _riva_hw_state *state)
{
 int tweak = 0;

   if (par->paneltweak) {
    tweak = par->paneltweak;
   } else {






    if(((par->Chipset & 0xffff) == 0x0328) && (state->bpp == 32)) {

     tweak = -1;
    }

    if((par->Chipset & 0xfff0) == 0x0310) {
     tweak = 1;
    }

   }

   return tweak;
}
