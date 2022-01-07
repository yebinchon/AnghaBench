
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8a66597_root_hub {int old_syssts; int port; int scount; } ;
struct r8a66597 {struct r8a66597_root_hub* root_hub; } ;


 int LNST ;
 int R8A66597_MAX_SAMPLING ;
 int USB_PORT_FEAT_CONNECTION ;
 int USB_PORT_FEAT_C_CONNECTION ;
 int get_syssts_reg (int) ;
 int r8a66597_read (struct r8a66597*,int ) ;
 int r8a66597_root_hub_start_polling (struct r8a66597*) ;

__attribute__((used)) static void start_root_hub_sampling(struct r8a66597 *r8a66597, int port,
     int connect)
{
 struct r8a66597_root_hub *rh = &r8a66597->root_hub[port];

 rh->old_syssts = r8a66597_read(r8a66597, get_syssts_reg(port)) & LNST;
 rh->scount = R8A66597_MAX_SAMPLING;
 if (connect)
  rh->port |= 1 << USB_PORT_FEAT_CONNECTION;
 else
  rh->port &= ~(1 << USB_PORT_FEAT_CONNECTION);
 rh->port |= 1 << USB_PORT_FEAT_C_CONNECTION;

 r8a66597_root_hub_start_polling(r8a66597);
}
