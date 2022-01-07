
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct broadsheetfb_par {TYPE_1__* board; } ;
struct TYPE_2__ {int (* set_ctl ) (struct broadsheetfb_par*,int ,int) ;int (* set_hdb ) (struct broadsheetfb_par*,int) ;} ;


 int BS_CS ;
 int BS_DC ;
 int BS_WR ;
 int stub1 (struct broadsheetfb_par*,int ,int) ;
 int stub2 (struct broadsheetfb_par*,int ,int) ;
 int stub3 (struct broadsheetfb_par*,int ,int) ;
 int stub4 (struct broadsheetfb_par*,int) ;
 int stub5 (struct broadsheetfb_par*,int ,int) ;
 int stub6 (struct broadsheetfb_par*,int ,int) ;

__attribute__((used)) static void broadsheet_burst_write(struct broadsheetfb_par *par, int size,
     u16 *data)
{
 int i;
 u16 tmp;

 par->board->set_ctl(par, BS_CS, 0);
 par->board->set_ctl(par, BS_DC, 1);

 for (i = 0; i < size; i++) {
  par->board->set_ctl(par, BS_WR, 0);
  tmp = (data[i] & 0x0F) << 4;
  tmp |= (data[i] & 0x0F00) << 4;
  par->board->set_hdb(par, tmp);
  par->board->set_ctl(par, BS_WR, 1);
 }

 par->board->set_ctl(par, BS_CS, 1);
}
