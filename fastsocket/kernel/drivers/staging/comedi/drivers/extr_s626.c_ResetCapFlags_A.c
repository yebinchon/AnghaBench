
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct enc_private {int MyCRB; } ;
struct comedi_device {int dummy; } ;


 scalar_t__ CRBMSK_INTCTRL ;
 int CRBMSK_INTRESETCMD ;
 int CRBMSK_INTRESET_A ;
 int DEBIreplace (struct comedi_device*,int ,int ,int) ;

__attribute__((used)) static void ResetCapFlags_A(struct comedi_device *dev, struct enc_private *k)
{
 DEBIreplace(dev, k->MyCRB, (uint16_t) (~CRBMSK_INTCTRL),
      CRBMSK_INTRESETCMD | CRBMSK_INTRESET_A);
}
