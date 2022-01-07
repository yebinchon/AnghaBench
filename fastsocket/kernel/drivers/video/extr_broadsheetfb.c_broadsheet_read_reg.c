
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct broadsheetfb_par {int dummy; } ;


 int broadsheet_get_data (struct broadsheetfb_par*) ;
 int broadsheet_send_command (struct broadsheetfb_par*,int ) ;
 int msleep (int) ;

__attribute__((used)) static u16 broadsheet_read_reg(struct broadsheetfb_par *par, u16 reg)
{
 broadsheet_send_command(par, reg);
 msleep(100);
 return broadsheet_get_data(par);
}
