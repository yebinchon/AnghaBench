
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hecubafb_par {int (* send_data ) (struct hecubafb_par*,int) ;int (* send_command ) (struct hecubafb_par*,int ) ;} ;


 int APOLLO_ERASE_DISPLAY ;
 int APOLLO_INIT_DISPLAY ;
 int n411_init_control (struct hecubafb_par*) ;
 int nosplash ;
 int splashval ;
 int stub1 (struct hecubafb_par*,int ) ;
 int stub2 (struct hecubafb_par*,int) ;
 int stub3 (struct hecubafb_par*,int ) ;
 int stub4 (struct hecubafb_par*,int) ;
 int udelay (int) ;

__attribute__((used)) static int n411_init_board(struct hecubafb_par *par)
{
 int retval;

 retval = n411_init_control(par);
 if (retval)
  return retval;

 par->send_command(par, APOLLO_INIT_DISPLAY);
 par->send_data(par, 0x81);


 udelay(1000);


 if (!nosplash) {
  par->send_command(par, APOLLO_ERASE_DISPLAY);
  par->send_data(par, splashval);
 }

 return 0;
}
