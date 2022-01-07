
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8a66597 {int dummy; } ;


 int BEMPE ;
 int BRDYE ;
 int CTRE ;
 int DPRPU ;
 int INTENB0 ;
 int SYSCFG0 ;
 int r8a66597_bset (struct r8a66597*,int,int ) ;

__attribute__((used)) static void r8a66597_usb_connect(struct r8a66597 *r8a66597)
{
 r8a66597_bset(r8a66597, CTRE, INTENB0);
 r8a66597_bset(r8a66597, BEMPE | BRDYE, INTENB0);

 r8a66597_bset(r8a66597, DPRPU, SYSCFG0);
}
