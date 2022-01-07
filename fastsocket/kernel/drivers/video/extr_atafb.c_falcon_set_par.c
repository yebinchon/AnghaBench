
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int falcon; } ;
struct atafb_par {scalar_t__ screen_base; TYPE_1__ hw; } ;
struct TYPE_6__ {scalar_t__ screen_base; } ;
struct TYPE_5__ {int (* set_screen_base ) (scalar_t__) ;} ;


 scalar_t__ DontCalcRes ;
 TYPE_3__ current_par ;
 int f_change_mode ;
 int f_new_mode ;
 TYPE_2__* fbhw ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void falcon_set_par(struct atafb_par *par)
{
 f_change_mode = 0;


 if (current_par.screen_base != par->screen_base)
  fbhw->set_screen_base(par->screen_base);


 if (DontCalcRes)
  return;







 f_new_mode = par->hw.falcon;
 f_change_mode = 1;
}
