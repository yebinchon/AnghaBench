
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct r8a66597 {int dummy; } ;


 unsigned long get_devadd_addr (int) ;
 int r8a66597_write (struct r8a66597*,int,unsigned long) ;

__attribute__((used)) static void set_devadd_reg(struct r8a66597 *r8a66597, u8 r8a66597_address,
      u16 usbspd, u8 upphub, u8 hubport, int port)
{
 u16 val;
 unsigned long devadd_reg = get_devadd_addr(r8a66597_address);

 val = (upphub << 11) | (hubport << 8) | (usbspd << 6) | (port & 0x0001);
 r8a66597_write(r8a66597, val, devadd_reg);
}
