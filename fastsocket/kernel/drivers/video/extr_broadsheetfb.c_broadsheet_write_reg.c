
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct broadsheetfb_par {TYPE_1__* board; } ;
struct TYPE_2__ {int (* set_ctl ) (struct broadsheetfb_par*,int ,int) ;int (* wait_for_rdy ) (struct broadsheetfb_par*) ;} ;


 int BS_CMD_WR_REG ;
 int BS_CS ;
 int BS_DC ;
 int broadsheet_issue_cmd (struct broadsheetfb_par*,int ) ;
 int broadsheet_issue_data (struct broadsheetfb_par*,int ) ;
 int stub1 (struct broadsheetfb_par*) ;
 int stub2 (struct broadsheetfb_par*,int ,int) ;
 int stub3 (struct broadsheetfb_par*,int ,int) ;
 int stub4 (struct broadsheetfb_par*,int ,int) ;

__attribute__((used)) static void broadsheet_write_reg(struct broadsheetfb_par *par, u16 reg,
     u16 data)
{

 par->board->wait_for_rdy(par);


 par->board->set_ctl(par, BS_CS, 0);

 broadsheet_issue_cmd(par, BS_CMD_WR_REG);

 par->board->set_ctl(par, BS_DC, 1);

 broadsheet_issue_data(par, reg);
 broadsheet_issue_data(par, data);

 par->board->set_ctl(par, BS_CS, 1);
}
